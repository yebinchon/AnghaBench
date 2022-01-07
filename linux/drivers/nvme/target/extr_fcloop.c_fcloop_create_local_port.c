
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_port_info {int port_id; int port_role; int port_name; int node_name; } ;
struct nvme_fc_local_port {struct fcloop_lport_priv* private; } ;
struct fcloop_lport_priv {struct fcloop_lport* lport; } ;
struct fcloop_lport {int mask; int lport_list; struct nvme_fc_local_port* localport; int fcaddr; int roles; int wwpn; int wwnn; } ;
struct fcloop_ctrl_options {int mask; int lport_list; struct nvme_fc_local_port* localport; int fcaddr; int roles; int wwpn; int wwnn; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int pinfo ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int LPORT_OPTS ;
 int fcloop_lock ;
 int fcloop_lports ;
 int fcloop_parse_options (struct fcloop_lport*,char const*) ;
 int fctemplate ;
 int kfree (struct fcloop_lport*) ;
 struct fcloop_lport* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (struct nvme_fc_port_info*,int ,int) ;
 int nvme_fc_register_localport (struct nvme_fc_port_info*,int *,int *,struct nvme_fc_local_port**) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t
fcloop_create_local_port(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct nvme_fc_port_info pinfo;
 struct fcloop_ctrl_options *opts;
 struct nvme_fc_local_port *localport;
 struct fcloop_lport *lport;
 struct fcloop_lport_priv *lport_priv;
 unsigned long flags;
 int ret = -ENOMEM;

 lport = kzalloc(sizeof(*lport), GFP_KERNEL);
 if (!lport)
  return -ENOMEM;

 opts = kzalloc(sizeof(*opts), GFP_KERNEL);
 if (!opts)
  goto out_free_lport;

 ret = fcloop_parse_options(opts, buf);
 if (ret)
  goto out_free_opts;


 if ((opts->mask & LPORT_OPTS) != LPORT_OPTS) {
  ret = -EINVAL;
  goto out_free_opts;
 }

 memset(&pinfo, 0, sizeof(pinfo));
 pinfo.node_name = opts->wwnn;
 pinfo.port_name = opts->wwpn;
 pinfo.port_role = opts->roles;
 pinfo.port_id = opts->fcaddr;

 ret = nvme_fc_register_localport(&pinfo, &fctemplate, ((void*)0), &localport);
 if (!ret) {

  lport_priv = localport->private;
  lport_priv->lport = lport;

  lport->localport = localport;
  INIT_LIST_HEAD(&lport->lport_list);

  spin_lock_irqsave(&fcloop_lock, flags);
  list_add_tail(&lport->lport_list, &fcloop_lports);
  spin_unlock_irqrestore(&fcloop_lock, flags);
 }

out_free_opts:
 kfree(opts);
out_free_lport:

 if (ret)
  kfree(lport);

 return ret ? ret : count;
}
