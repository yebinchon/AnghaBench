
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sdeschmacsha256; int hmacsha256; } ;
struct TCP_Server_Info {TYPE_1__ secmech; } ;


 int cifs_alloc_hash (char*,int *,int *) ;

__attribute__((used)) static int
smb2_crypto_shash_allocate(struct TCP_Server_Info *server)
{
 return cifs_alloc_hash("hmac(sha256)",
          &server->secmech.hmacsha256,
          &server->secmech.sdeschmacsha256);
}
