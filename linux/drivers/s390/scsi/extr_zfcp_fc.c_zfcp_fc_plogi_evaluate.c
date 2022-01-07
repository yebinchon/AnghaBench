
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zfcp_port {scalar_t__ wwpn; int supported_classes; int maxframe_size; scalar_t__ wwnn; TYPE_2__* adapter; scalar_t__ d_id; } ;
struct TYPE_7__ {int sp_bb_data; } ;
struct fc_els_flogi {TYPE_4__* fl_cssp; TYPE_3__ fl_csp; int fl_wwnn; int fl_wwpn; } ;
struct TYPE_8__ {int cp_class; } ;
struct TYPE_6__ {TYPE_1__* ccw_device; } ;
struct TYPE_5__ {int dev; } ;


 int FC_COS_CLASS1 ;
 int FC_COS_CLASS2 ;
 int FC_COS_CLASS3 ;
 int FC_COS_CLASS4 ;
 int FC_CPC_VALID ;
 int be16_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 int dev_warn (int *,char*,unsigned long long,unsigned long long) ;

void zfcp_fc_plogi_evaluate(struct zfcp_port *port, struct fc_els_flogi *plogi)
{
 if (be64_to_cpu(plogi->fl_wwpn) != port->wwpn) {
  port->d_id = 0;
  dev_warn(&port->adapter->ccw_device->dev,
    "A port opened with WWPN 0x%016Lx returned data that "
    "identifies it as WWPN 0x%016Lx\n",
    (unsigned long long) port->wwpn,
    (unsigned long long) be64_to_cpu(plogi->fl_wwpn));
  return;
 }

 port->wwnn = be64_to_cpu(plogi->fl_wwnn);
 port->maxframe_size = be16_to_cpu(plogi->fl_csp.sp_bb_data);

 if (plogi->fl_cssp[0].cp_class & cpu_to_be16(FC_CPC_VALID))
  port->supported_classes |= FC_COS_CLASS1;
 if (plogi->fl_cssp[1].cp_class & cpu_to_be16(FC_CPC_VALID))
  port->supported_classes |= FC_COS_CLASS2;
 if (plogi->fl_cssp[2].cp_class & cpu_to_be16(FC_CPC_VALID))
  port->supported_classes |= FC_COS_CLASS3;
 if (plogi->fl_cssp[3].cp_class & cpu_to_be16(FC_CPC_VALID))
  port->supported_classes |= FC_COS_CLASS4;
}
