
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_feat_host_behavior {int acre; } ;
struct nvme_ctrl {int * crdt; } ;


 int GFP_KERNEL ;
 int NVME_ENABLE_ACRE ;
 int NVME_FEAT_HOST_BEHAVIOR ;
 int kfree (struct nvme_feat_host_behavior*) ;
 struct nvme_feat_host_behavior* kzalloc (int,int ) ;
 int nvme_set_features (struct nvme_ctrl*,int ,int ,struct nvme_feat_host_behavior*,int,int *) ;

__attribute__((used)) static int nvme_configure_acre(struct nvme_ctrl *ctrl)
{
 struct nvme_feat_host_behavior *host;
 int ret;


 if (!ctrl->crdt[0])
  return 0;

 host = kzalloc(sizeof(*host), GFP_KERNEL);
 if (!host)
  return 0;

 host->acre = NVME_ENABLE_ACRE;
 ret = nvme_set_features(ctrl, NVME_FEAT_HOST_BEHAVIOR, 0,
    host, sizeof(*host), ((void*)0));
 kfree(host);
 return ret;
}
