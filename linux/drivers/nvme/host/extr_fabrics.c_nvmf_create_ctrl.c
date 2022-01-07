
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmf_transport_ops {int required_opts; int allowed_opts; int module; struct nvme_ctrl* (* create_ctrl ) (struct device*,struct nvmf_ctrl_options*) ;} ;
struct nvmf_ctrl_options {int mask; int transport; } ;
struct nvme_ctrl {int dummy; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 struct nvme_ctrl* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nvme_ctrl*) ;
 int NVMF_ALLOWED_OPTS ;
 int NVMF_REQUIRED_OPTS ;
 int PTR_ERR (struct nvme_ctrl*) ;
 int down_read (int *) ;
 struct nvmf_ctrl_options* kzalloc (int,int ) ;
 int module_put (int ) ;
 int nvmf_check_allowed_opts (struct nvmf_ctrl_options*,int) ;
 int nvmf_check_required_opts (struct nvmf_ctrl_options*,int) ;
 int nvmf_free_options (struct nvmf_ctrl_options*) ;
 struct nvmf_transport_ops* nvmf_lookup_transport (struct nvmf_ctrl_options*) ;
 int nvmf_parse_options (struct nvmf_ctrl_options*,char const*) ;
 int nvmf_transports_rwsem ;
 int pr_info (char*,int ) ;
 int request_module (char*,int ) ;
 struct nvme_ctrl* stub1 (struct device*,struct nvmf_ctrl_options*) ;
 int try_module_get (int ) ;
 int up_read (int *) ;

__attribute__((used)) static struct nvme_ctrl *
nvmf_create_ctrl(struct device *dev, const char *buf)
{
 struct nvmf_ctrl_options *opts;
 struct nvmf_transport_ops *ops;
 struct nvme_ctrl *ctrl;
 int ret;

 opts = kzalloc(sizeof(*opts), GFP_KERNEL);
 if (!opts)
  return ERR_PTR(-ENOMEM);

 ret = nvmf_parse_options(opts, buf);
 if (ret)
  goto out_free_opts;


 request_module("nvme-%s", opts->transport);






 ret = nvmf_check_required_opts(opts, NVMF_REQUIRED_OPTS);
 if (ret)
  goto out_free_opts;
 opts->mask &= ~NVMF_REQUIRED_OPTS;

 down_read(&nvmf_transports_rwsem);
 ops = nvmf_lookup_transport(opts);
 if (!ops) {
  pr_info("no handler found for transport %s.\n",
   opts->transport);
  ret = -EINVAL;
  goto out_unlock;
 }

 if (!try_module_get(ops->module)) {
  ret = -EBUSY;
  goto out_unlock;
 }
 up_read(&nvmf_transports_rwsem);

 ret = nvmf_check_required_opts(opts, ops->required_opts);
 if (ret)
  goto out_module_put;
 ret = nvmf_check_allowed_opts(opts, NVMF_ALLOWED_OPTS |
    ops->allowed_opts | ops->required_opts);
 if (ret)
  goto out_module_put;

 ctrl = ops->create_ctrl(dev, opts);
 if (IS_ERR(ctrl)) {
  ret = PTR_ERR(ctrl);
  goto out_module_put;
 }

 module_put(ops->module);
 return ctrl;

out_module_put:
 module_put(ops->module);
 goto out_free_opts;
out_unlock:
 up_read(&nvmf_transports_rwsem);
out_free_opts:
 nvmf_free_options(opts);
 return ERR_PTR(ret);
}
