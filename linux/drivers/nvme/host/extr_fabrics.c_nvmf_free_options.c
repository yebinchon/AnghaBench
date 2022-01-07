
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmf_ctrl_options {struct nvmf_ctrl_options* host_traddr; struct nvmf_ctrl_options* subsysnqn; struct nvmf_ctrl_options* trsvcid; struct nvmf_ctrl_options* traddr; struct nvmf_ctrl_options* transport; int host; } ;


 int kfree (struct nvmf_ctrl_options*) ;
 int nvmf_host_put (int ) ;

void nvmf_free_options(struct nvmf_ctrl_options *opts)
{
 nvmf_host_put(opts->host);
 kfree(opts->transport);
 kfree(opts->traddr);
 kfree(opts->trsvcid);
 kfree(opts->subsysnqn);
 kfree(opts->host_traddr);
 kfree(opts);
}
