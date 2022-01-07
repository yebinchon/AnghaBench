
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_secmech {int sdeschmacsha256; int hmacsha256; int sdesccmacaes; int cmacaes; int sdescsha512; int sha512; } ;
struct TCP_Server_Info {struct cifs_secmech secmech; } ;


 int cifs_alloc_hash (char*,int *,int *) ;
 int cifs_free_hash (int *,int *) ;

int
smb311_crypto_shash_allocate(struct TCP_Server_Info *server)
{
 struct cifs_secmech *p = &server->secmech;
 int rc = 0;

 rc = cifs_alloc_hash("hmac(sha256)",
        &p->hmacsha256,
        &p->sdeschmacsha256);
 if (rc)
  return rc;

 rc = cifs_alloc_hash("cmac(aes)", &p->cmacaes, &p->sdesccmacaes);
 if (rc)
  goto err;

 rc = cifs_alloc_hash("sha512", &p->sha512, &p->sdescsha512);
 if (rc)
  goto err;

 return 0;

err:
 cifs_free_hash(&p->cmacaes, &p->sdesccmacaes);
 cifs_free_hash(&p->hmacsha256, &p->sdeschmacsha256);
 return rc;
}
