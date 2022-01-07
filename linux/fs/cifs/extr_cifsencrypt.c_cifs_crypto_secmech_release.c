
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sdescsha512; int * sdescmd5; int * sdeschmacmd5; int * sdeschmacsha256; int * sdesccmacaes; int * ccmaesdecrypt; int * ccmaesencrypt; int * hmacmd5; int * sha512; int * md5; int * hmacsha256; int * cmacaes; } ;
struct TCP_Server_Info {TYPE_1__ secmech; } ;


 int crypto_free_aead (int *) ;
 int crypto_free_shash (int *) ;
 int kfree (int *) ;

void
cifs_crypto_secmech_release(struct TCP_Server_Info *server)
{
 if (server->secmech.cmacaes) {
  crypto_free_shash(server->secmech.cmacaes);
  server->secmech.cmacaes = ((void*)0);
 }

 if (server->secmech.hmacsha256) {
  crypto_free_shash(server->secmech.hmacsha256);
  server->secmech.hmacsha256 = ((void*)0);
 }

 if (server->secmech.md5) {
  crypto_free_shash(server->secmech.md5);
  server->secmech.md5 = ((void*)0);
 }

 if (server->secmech.sha512) {
  crypto_free_shash(server->secmech.sha512);
  server->secmech.sha512 = ((void*)0);
 }

 if (server->secmech.hmacmd5) {
  crypto_free_shash(server->secmech.hmacmd5);
  server->secmech.hmacmd5 = ((void*)0);
 }

 if (server->secmech.ccmaesencrypt) {
  crypto_free_aead(server->secmech.ccmaesencrypt);
  server->secmech.ccmaesencrypt = ((void*)0);
 }

 if (server->secmech.ccmaesdecrypt) {
  crypto_free_aead(server->secmech.ccmaesdecrypt);
  server->secmech.ccmaesdecrypt = ((void*)0);
 }

 kfree(server->secmech.sdesccmacaes);
 server->secmech.sdesccmacaes = ((void*)0);
 kfree(server->secmech.sdeschmacsha256);
 server->secmech.sdeschmacsha256 = ((void*)0);
 kfree(server->secmech.sdeschmacmd5);
 server->secmech.sdeschmacmd5 = ((void*)0);
 kfree(server->secmech.sdescmd5);
 server->secmech.sdescmd5 = ((void*)0);
 kfree(server->secmech.sdescsha512);
 server->secmech.sdescsha512 = ((void*)0);
}
