
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sg; } ;
struct nvmet_tcp_cmd {TYPE_1__ req; int iov; } ;


 int kfree (int ) ;
 int nvmet_req_uninit (TYPE_1__*) ;
 int nvmet_tcp_unmap_pdu_iovec (struct nvmet_tcp_cmd*) ;
 int sgl_free (int ) ;

__attribute__((used)) static void nvmet_tcp_finish_cmd(struct nvmet_tcp_cmd *cmd)
{
 nvmet_req_uninit(&cmd->req);
 nvmet_tcp_unmap_pdu_iovec(cmd);
 kfree(cmd->iov);
 sgl_free(cmd->req.sg);
}
