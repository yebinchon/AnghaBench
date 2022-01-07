
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ibmvfc_host {int disc_buf_sz; int disc_buf_dma; } ;
struct TYPE_6__ {void* len; int va; } ;
struct TYPE_5__ {int length; void* opcode; void* version; } ;
struct ibmvfc_discover_targets {TYPE_3__ buffer; void* bufflen; TYPE_2__ common; } ;
struct TYPE_4__ {struct ibmvfc_discover_targets discover_targets; } ;
struct ibmvfc_event {TYPE_1__ iu; } ;


 int IBMVFC_DISC_TARGETS ;
 int IBMVFC_HOST_ACTION_INIT_WAIT ;
 int IBMVFC_LINK_DEAD ;
 int IBMVFC_MAD_FORMAT ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int default_timeout ;
 int ibmvfc_dbg (struct ibmvfc_host*,char*) ;
 int ibmvfc_discover_targets_done ;
 struct ibmvfc_event* ibmvfc_get_event (struct ibmvfc_host*) ;
 int ibmvfc_init_event (struct ibmvfc_event*,int ,int ) ;
 int ibmvfc_link_down (struct ibmvfc_host*,int ) ;
 int ibmvfc_send_event (struct ibmvfc_event*,struct ibmvfc_host*,int ) ;
 int ibmvfc_set_host_action (struct ibmvfc_host*,int ) ;
 int memset (struct ibmvfc_discover_targets*,int ,int) ;

__attribute__((used)) static void ibmvfc_discover_targets(struct ibmvfc_host *vhost)
{
 struct ibmvfc_discover_targets *mad;
 struct ibmvfc_event *evt = ibmvfc_get_event(vhost);

 ibmvfc_init_event(evt, ibmvfc_discover_targets_done, IBMVFC_MAD_FORMAT);
 mad = &evt->iu.discover_targets;
 memset(mad, 0, sizeof(*mad));
 mad->common.version = cpu_to_be32(1);
 mad->common.opcode = cpu_to_be32(IBMVFC_DISC_TARGETS);
 mad->common.length = cpu_to_be16(sizeof(*mad));
 mad->bufflen = cpu_to_be32(vhost->disc_buf_sz);
 mad->buffer.va = cpu_to_be64(vhost->disc_buf_dma);
 mad->buffer.len = cpu_to_be32(vhost->disc_buf_sz);
 ibmvfc_set_host_action(vhost, IBMVFC_HOST_ACTION_INIT_WAIT);

 if (!ibmvfc_send_event(evt, vhost, default_timeout))
  ibmvfc_dbg(vhost, "Sent discover targets\n");
 else
  ibmvfc_link_down(vhost, IBMVFC_LINK_DEAD);
}
