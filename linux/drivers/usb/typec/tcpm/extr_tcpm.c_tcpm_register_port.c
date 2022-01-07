
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct typec_altmode_desc {scalar_t__ svid; } ;
struct typec_altmode {int * ops; } ;
struct TYPE_5__ {int revision; int pd_revision; int type; int port_type_set; int try_role; int vconn_set; int pr_set; int dr_set; int fwnode; int prefer_role; } ;
struct TYPE_4__ {int * identity; } ;
struct tcpm_port {int wq; struct typec_altmode* role_sw; int lock; struct typec_altmode** port_altmode; struct typec_altmode* typec_port; TYPE_2__ typec_caps; struct device* dev; int port_type; int partner_ident; TYPE_1__ partner_desc; int try_role; int pps_complete; int swap_complete; int tx_complete; int pd_event_lock; int event_work; int vdm_state_machine; int state_machine; int swap_lock; struct tcpc_dev* tcpc; } ;
struct tcpc_dev {TYPE_3__* config; int fwnode; int pd_transmit; int set_roles; int set_pd_rx; int set_vbus; int set_vconn; int set_polarity; int get_cc; int set_cc; int get_vbus; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct typec_altmode_desc* alt_modes; int try_role_hw; } ;


 int ARRAY_SIZE (struct typec_altmode**) ;
 int EINVAL ;
 int ENOMEM ;
 struct tcpm_port* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct typec_altmode*) ;
 int PTR_ERR (struct typec_altmode*) ;
 int TYPEC_NO_PREFERRED_ROLE ;
 int create_singlethread_workqueue (int ) ;
 int destroy_workqueue (int ) ;
 int dev_name (struct device*) ;
 struct tcpm_port* devm_kzalloc (struct device*,int,int ) ;
 int devm_tcpm_psy_register (struct tcpm_port*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;
 int tcpm_altmode_ops ;
 int tcpm_copy_caps (struct tcpm_port*,TYPE_3__*) ;
 int tcpm_debugfs_exit (struct tcpm_port*) ;
 int tcpm_debugfs_init (struct tcpm_port*) ;
 int tcpm_dr_set ;
 int tcpm_fw_get_caps (struct tcpm_port*,int ) ;
 int tcpm_init (struct tcpm_port*) ;
 int tcpm_log (struct tcpm_port*,char*,int ,...) ;
 int tcpm_pd_event_handler ;
 int tcpm_port_type_set ;
 int tcpm_pr_set ;
 int tcpm_state_machine_work ;
 int tcpm_try_role ;
 int tcpm_vconn_set ;
 int typec_altmode_set_drvdata (struct typec_altmode*,struct tcpm_port*) ;
 struct typec_altmode* typec_port_register_altmode (struct typec_altmode*,struct typec_altmode_desc const*) ;
 struct typec_altmode* typec_register_port (struct device*,TYPE_2__*) ;
 struct typec_altmode* usb_role_switch_get (struct device*) ;
 int usb_role_switch_put (struct typec_altmode*) ;
 int vdm_state_machine_work ;

struct tcpm_port *tcpm_register_port(struct device *dev, struct tcpc_dev *tcpc)
{
 struct tcpm_port *port;
 int i, err;

 if (!dev || !tcpc ||
     !tcpc->get_vbus || !tcpc->set_cc || !tcpc->get_cc ||
     !tcpc->set_polarity || !tcpc->set_vconn || !tcpc->set_vbus ||
     !tcpc->set_pd_rx || !tcpc->set_roles || !tcpc->pd_transmit)
  return ERR_PTR(-EINVAL);

 port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
 if (!port)
  return ERR_PTR(-ENOMEM);

 port->dev = dev;
 port->tcpc = tcpc;

 mutex_init(&port->lock);
 mutex_init(&port->swap_lock);

 port->wq = create_singlethread_workqueue(dev_name(dev));
 if (!port->wq)
  return ERR_PTR(-ENOMEM);
 INIT_DELAYED_WORK(&port->state_machine, tcpm_state_machine_work);
 INIT_DELAYED_WORK(&port->vdm_state_machine, vdm_state_machine_work);
 INIT_WORK(&port->event_work, tcpm_pd_event_handler);

 spin_lock_init(&port->pd_event_lock);

 init_completion(&port->tx_complete);
 init_completion(&port->swap_complete);
 init_completion(&port->pps_complete);
 tcpm_debugfs_init(port);

 err = tcpm_fw_get_caps(port, tcpc->fwnode);
 if ((err < 0) && tcpc->config)
  err = tcpm_copy_caps(port, tcpc->config);
 if (err < 0)
  goto out_destroy_wq;

 if (!tcpc->config || !tcpc->config->try_role_hw)
  port->try_role = port->typec_caps.prefer_role;
 else
  port->try_role = TYPEC_NO_PREFERRED_ROLE;

 port->typec_caps.fwnode = tcpc->fwnode;
 port->typec_caps.revision = 0x0120;
 port->typec_caps.pd_revision = 0x0300;
 port->typec_caps.dr_set = tcpm_dr_set;
 port->typec_caps.pr_set = tcpm_pr_set;
 port->typec_caps.vconn_set = tcpm_vconn_set;
 port->typec_caps.try_role = tcpm_try_role;
 port->typec_caps.port_type_set = tcpm_port_type_set;

 port->partner_desc.identity = &port->partner_ident;
 port->port_type = port->typec_caps.type;

 port->role_sw = usb_role_switch_get(port->dev);
 if (IS_ERR(port->role_sw)) {
  err = PTR_ERR(port->role_sw);
  goto out_destroy_wq;
 }

 err = devm_tcpm_psy_register(port);
 if (err)
  goto out_role_sw_put;

 port->typec_port = typec_register_port(port->dev, &port->typec_caps);
 if (IS_ERR(port->typec_port)) {
  err = PTR_ERR(port->typec_port);
  goto out_role_sw_put;
 }

 if (tcpc->config && tcpc->config->alt_modes) {
  const struct typec_altmode_desc *paltmode = tcpc->config->alt_modes;

  i = 0;
  while (paltmode->svid && i < ARRAY_SIZE(port->port_altmode)) {
   struct typec_altmode *alt;

   alt = typec_port_register_altmode(port->typec_port,
         paltmode);
   if (IS_ERR(alt)) {
    tcpm_log(port,
      "%s: failed to register port alternate mode 0x%x",
      dev_name(dev), paltmode->svid);
    break;
   }
   typec_altmode_set_drvdata(alt, port);
   alt->ops = &tcpm_altmode_ops;
   port->port_altmode[i] = alt;
   i++;
   paltmode++;
  }
 }

 mutex_lock(&port->lock);
 tcpm_init(port);
 mutex_unlock(&port->lock);

 tcpm_log(port, "%s: registered", dev_name(dev));
 return port;

out_role_sw_put:
 usb_role_switch_put(port->role_sw);
out_destroy_wq:
 tcpm_debugfs_exit(port);
 destroy_workqueue(port->wq);
 return ERR_PTR(err);
}
