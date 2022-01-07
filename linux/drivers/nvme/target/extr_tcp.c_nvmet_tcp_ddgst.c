
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int transfer_len; int sg; } ;
struct nvmet_tcp_cmd {TYPE_1__ req; int exp_ddgst; } ;
struct ahash_request {int dummy; } ;


 int ahash_request_set_crypt (struct ahash_request*,int ,void*,int ) ;
 int crypto_ahash_digest (struct ahash_request*) ;

__attribute__((used)) static void nvmet_tcp_ddgst(struct ahash_request *hash,
  struct nvmet_tcp_cmd *cmd)
{
 ahash_request_set_crypt(hash, cmd->req.sg,
  (void *)&cmd->exp_ddgst, cmd->req.transfer_len);
 crypto_ahash_digest(hash);
}
