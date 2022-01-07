
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_secmech {int sdeschmacsha256; int hmacsha256; int sdesccmacaes; int cmacaes; } ;
struct TCP_Server_Info {struct cifs_secmech secmech; } ;


 int cifs_alloc_hash (char*,int *,int *) ;
 int cifs_free_hash (int *,int *) ;

__attribute__((used)) static int
smb3_crypto_shash_allocate(struct TCP_Server_Info *server)
{
 struct cifs_secmech *p = &server->secmech;
 int rc;

 rc = cifs_alloc_hash("hmac(sha256)",
        &p->hmacsha256,
        &p->sdeschmacsha256);
 if (rc)
  goto err;

 rc = cifs_alloc_hash("cmac(aes)", &p->cmacaes, &p->sdesccmacaes);
 if (rc)
  goto err;

 return 0;
err:
 cifs_free_hash(&p->hmacsha256, &p->sdeschmacsha256);
 return rc;
}
