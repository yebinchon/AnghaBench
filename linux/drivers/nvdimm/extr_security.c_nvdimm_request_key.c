
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct nvdimm {int dimm_id; struct device dev; } ;
struct key {int sem; } ;
struct encrypted_key_payload {scalar_t__ decrypted_datalen; } ;
typedef int NVDIMM_PREFIX ;


 int ENOKEY ;
 scalar_t__ IS_ERR (struct key*) ;
 int NVDIMM_KEY_DESC_LEN ;
 scalar_t__ NVDIMM_PASSPHRASE_LEN ;
 int PTR_ERR (struct key*) ;
 struct encrypted_key_payload* dereference_key_locked (struct key*) ;
 int dev_dbg (struct device*,char*) ;
 int down_read (int *) ;
 int key_put (struct key*) ;
 int key_type_encrypted ;
 struct key* request_key (int *,char*,char*) ;
 int sprintf (char*,char*,char const*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static struct key *nvdimm_request_key(struct nvdimm *nvdimm)
{
 struct key *key = ((void*)0);
 static const char NVDIMM_PREFIX[] = "nvdimm:";
 char desc[NVDIMM_KEY_DESC_LEN + sizeof(NVDIMM_PREFIX)];
 struct device *dev = &nvdimm->dev;

 sprintf(desc, "%s%s", NVDIMM_PREFIX, nvdimm->dimm_id);
 key = request_key(&key_type_encrypted, desc, "");
 if (IS_ERR(key)) {
  if (PTR_ERR(key) == -ENOKEY)
   dev_dbg(dev, "request_key() found no key\n");
  else
   dev_dbg(dev, "request_key() upcall failed\n");
  key = ((void*)0);
 } else {
  struct encrypted_key_payload *epayload;

  down_read(&key->sem);
  epayload = dereference_key_locked(key);
  if (epayload->decrypted_datalen != NVDIMM_PASSPHRASE_LEN) {
   up_read(&key->sem);
   key_put(key);
   key = ((void*)0);
  }
 }

 return key;
}
