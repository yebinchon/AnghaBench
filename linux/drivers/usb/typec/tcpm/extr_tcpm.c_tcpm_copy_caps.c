
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int type; int prefer_role; } ;
struct tcpm_port {int self_powered; TYPE_1__ typec_caps; int operating_snk_mw; int snk_vdo; int nr_snk_vdo; int snk_pdo; void* nr_snk_pdo; int src_pdo; void* nr_src_pdo; } ;
struct tcpc_config {int self_powered; int data; int type; int default_role; int operating_snk_mw; int nr_snk_vdo; int snk_vdo; int nr_snk_pdo; int snk_pdo; int nr_src_pdo; int src_pdo; } ;


 int EINVAL ;
 void* tcpm_copy_pdos (int ,int ,int ) ;
 int tcpm_copy_vdos (int ,int ,int ) ;
 scalar_t__ tcpm_validate_caps (struct tcpm_port*,int ,int ) ;

__attribute__((used)) static int tcpm_copy_caps(struct tcpm_port *port,
     const struct tcpc_config *tcfg)
{
 if (tcpm_validate_caps(port, tcfg->src_pdo, tcfg->nr_src_pdo) ||
     tcpm_validate_caps(port, tcfg->snk_pdo, tcfg->nr_snk_pdo))
  return -EINVAL;

 port->nr_src_pdo = tcpm_copy_pdos(port->src_pdo, tcfg->src_pdo,
       tcfg->nr_src_pdo);
 port->nr_snk_pdo = tcpm_copy_pdos(port->snk_pdo, tcfg->snk_pdo,
       tcfg->nr_snk_pdo);

 port->nr_snk_vdo = tcpm_copy_vdos(port->snk_vdo, tcfg->snk_vdo,
       tcfg->nr_snk_vdo);

 port->operating_snk_mw = tcfg->operating_snk_mw;

 port->typec_caps.prefer_role = tcfg->default_role;
 port->typec_caps.type = tcfg->type;
 port->typec_caps.data = tcfg->data;
 port->self_powered = tcfg->self_powered;

 return 0;
}
