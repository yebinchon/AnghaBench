
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; void* opcode; void* version; } ;
struct ibmvfc_npiv_logout_mad {TYPE_1__ common; } ;
struct ibmvfc_host {int dummy; } ;
struct TYPE_4__ {struct ibmvfc_npiv_logout_mad npiv_logout; } ;
struct ibmvfc_event {TYPE_2__ iu; } ;


 int IBMVFC_HOST_ACTION_LOGO_WAIT ;
 int IBMVFC_LINK_DEAD ;
 int IBMVFC_MAD_FORMAT ;
 int IBMVFC_NPIV_LOGOUT ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int default_timeout ;
 int ibmvfc_dbg (struct ibmvfc_host*,char*) ;
 struct ibmvfc_event* ibmvfc_get_event (struct ibmvfc_host*) ;
 int ibmvfc_init_event (struct ibmvfc_event*,int ,int ) ;
 int ibmvfc_link_down (struct ibmvfc_host*,int ) ;
 int ibmvfc_npiv_logout_done ;
 int ibmvfc_send_event (struct ibmvfc_event*,struct ibmvfc_host*,int ) ;
 int ibmvfc_set_host_action (struct ibmvfc_host*,int ) ;
 int memset (struct ibmvfc_npiv_logout_mad*,int ,int) ;

__attribute__((used)) static void ibmvfc_npiv_logout(struct ibmvfc_host *vhost)
{
 struct ibmvfc_npiv_logout_mad *mad;
 struct ibmvfc_event *evt;

 evt = ibmvfc_get_event(vhost);
 ibmvfc_init_event(evt, ibmvfc_npiv_logout_done, IBMVFC_MAD_FORMAT);

 mad = &evt->iu.npiv_logout;
 memset(mad, 0, sizeof(*mad));
 mad->common.version = cpu_to_be32(1);
 mad->common.opcode = cpu_to_be32(IBMVFC_NPIV_LOGOUT);
 mad->common.length = cpu_to_be16(sizeof(struct ibmvfc_npiv_logout_mad));

 ibmvfc_set_host_action(vhost, IBMVFC_HOST_ACTION_LOGO_WAIT);

 if (!ibmvfc_send_event(evt, vhost, default_timeout))
  ibmvfc_dbg(vhost, "Sent NPIV logout\n");
 else
  ibmvfc_link_down(vhost, IBMVFC_LINK_DEAD);
}
