
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct user_key_payload {int datalen; scalar_t__ data; } ;
struct key {int sem; int description; } ;
struct fscrypt_key {int size; } ;


 int ENOKEY ;
 int ENOMEM ;
 struct key* ERR_PTR (int ) ;
 int FSCRYPT_KEY_DESCRIPTOR_SIZE ;
 int FSCRYPT_MAX_KEY_SIZE ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct key*) ;
 int down_read (int *) ;
 int fscrypt_warn (int *,char*,int ,...) ;
 char* kasprintf (int ,char*,char const*,int ,int const*) ;
 int key_put (struct key*) ;
 int key_type_logon ;
 int kfree (char*) ;
 struct key* request_key (int *,char*,int *) ;
 int up_read (int *) ;
 struct user_key_payload* user_key_payload_locked (struct key*) ;

__attribute__((used)) static struct key *
find_and_lock_process_key(const char *prefix,
     const u8 descriptor[FSCRYPT_KEY_DESCRIPTOR_SIZE],
     unsigned int min_keysize,
     const struct fscrypt_key **payload_ret)
{
 char *description;
 struct key *key;
 const struct user_key_payload *ukp;
 const struct fscrypt_key *payload;

 description = kasprintf(GFP_NOFS, "%s%*phN", prefix,
    FSCRYPT_KEY_DESCRIPTOR_SIZE, descriptor);
 if (!description)
  return ERR_PTR(-ENOMEM);

 key = request_key(&key_type_logon, description, ((void*)0));
 kfree(description);
 if (IS_ERR(key))
  return key;

 down_read(&key->sem);
 ukp = user_key_payload_locked(key);

 if (!ukp)
  goto invalid;

 payload = (const struct fscrypt_key *)ukp->data;

 if (ukp->datalen != sizeof(struct fscrypt_key) ||
     payload->size < 1 || payload->size > FSCRYPT_MAX_KEY_SIZE) {
  fscrypt_warn(((void*)0),
        "key with description '%s' has invalid payload",
        key->description);
  goto invalid;
 }

 if (payload->size < min_keysize) {
  fscrypt_warn(((void*)0),
        "key with description '%s' is too short (got %u bytes, need %u+ bytes)",
        key->description, payload->size, min_keysize);
  goto invalid;
 }

 *payload_ret = payload;
 return key;

invalid:
 up_read(&key->sem);
 key_put(key);
 return ERR_PTR(-ENOKEY);
}
