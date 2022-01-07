
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct nvme_command {int dummy; } ;


 int NVME_QID_ANY ;
 int __nvme_submit_sync_cmd (struct request_queue*,struct nvme_command*,int *,void*,unsigned int,int ,int ,int ,int ,int) ;

int nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
  void *buffer, unsigned bufflen)
{
 return __nvme_submit_sync_cmd(q, cmd, ((void*)0), buffer, bufflen, 0,
   NVME_QID_ANY, 0, 0, 0);
}
