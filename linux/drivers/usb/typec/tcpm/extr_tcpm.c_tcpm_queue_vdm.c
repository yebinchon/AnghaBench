
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcpm_port {int vdo_count; int vdm_state; scalar_t__ vdm_retries; int * vdo_data; } ;


 int VDM_STATE_READY ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static void tcpm_queue_vdm(struct tcpm_port *port, const u32 header,
      const u32 *data, int cnt)
{
 port->vdo_count = cnt + 1;
 port->vdo_data[0] = header;
 memcpy(&port->vdo_data[1], data, sizeof(u32) * cnt);

 port->vdm_retries = 0;
 port->vdm_state = VDM_STATE_READY;
}
