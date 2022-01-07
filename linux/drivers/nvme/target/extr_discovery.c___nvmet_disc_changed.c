
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_port {int dummy; } ;
struct nvmet_ctrl {struct nvmet_port* port; } ;


 int NVME_AEN_BIT_DISC_CHANGE ;
 int NVME_AER_NOTICE_DISC_CHANGED ;
 int NVME_AER_TYPE_NOTICE ;
 int NVME_LOG_DISC ;
 int nvmet_add_async_event (struct nvmet_ctrl*,int ,int ,int ) ;
 scalar_t__ nvmet_aen_bit_disabled (struct nvmet_ctrl*,int ) ;

__attribute__((used)) static void __nvmet_disc_changed(struct nvmet_port *port,
     struct nvmet_ctrl *ctrl)
{
 if (ctrl->port != port)
  return;

 if (nvmet_aen_bit_disabled(ctrl, NVME_AEN_BIT_DISC_CHANGE))
  return;

 nvmet_add_async_event(ctrl, NVME_AER_TYPE_NOTICE,
         NVME_AER_NOTICE_DISC_CHANGED, NVME_LOG_DISC);
}
