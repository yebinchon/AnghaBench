
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fc_vport {char* symbolic_name; struct fc_lport* dd_data; } ;
struct fc_ns_rspn {int dummy; } ;
struct TYPE_3__ {int (* elsct_send ) (struct fc_lport*,int ,struct fc_frame*,int ,int *,int *,int) ;} ;
struct fc_lport {scalar_t__ state; int r_a_tov; TYPE_1__ tt; int host; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {int dummy; } ;
struct TYPE_4__ {char* name; } ;


 char* FCOE_NAME ;
 char* FCOE_VERSION ;
 int FC_FID_DIR_SERV ;
 int FC_NS_RSPN_ID ;
 int FC_SYMBOLIC_NAME_SIZE ;
 scalar_t__ LPORT_ST_READY ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int fc_host_symbolic_name (int ) ;
 TYPE_2__* fcoe_netdev (struct fc_lport*) ;
 int snprintf (int ,int ,char*,char*,char*,char*,char*) ;
 size_t strnlen (int ,int) ;
 int stub1 (struct fc_lport*,int ,struct fc_frame*,int ,int *,int *,int) ;

__attribute__((used)) static void fcoe_set_vport_symbolic_name(struct fc_vport *vport)
{
 struct fc_lport *lport = vport->dd_data;
 struct fc_frame *fp;
 size_t len;

 snprintf(fc_host_symbolic_name(lport->host), FC_SYMBOLIC_NAME_SIZE,
   "%s v%s over %s : %s", FCOE_NAME, FCOE_VERSION,
   fcoe_netdev(lport)->name, vport->symbolic_name);

 if (lport->state != LPORT_ST_READY)
  return;

 len = strnlen(fc_host_symbolic_name(lport->host), 255);
 fp = fc_frame_alloc(lport,
       sizeof(struct fc_ct_hdr) +
       sizeof(struct fc_ns_rspn) + len);
 if (!fp)
  return;
 lport->tt.elsct_send(lport, FC_FID_DIR_SERV, fp, FC_NS_RSPN_ID,
        ((void*)0), ((void*)0), 3 * lport->r_a_tov);
}
