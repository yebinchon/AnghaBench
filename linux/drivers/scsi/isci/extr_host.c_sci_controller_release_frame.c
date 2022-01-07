
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int get; } ;
struct isci_host {TYPE_2__* scu_registers; TYPE_3__ uf_control; } ;
struct TYPE_4__ {int unsolicited_frame_get_pointer; } ;
struct TYPE_5__ {TYPE_1__ sdma; } ;


 scalar_t__ sci_unsolicited_frame_control_release_frame (TYPE_3__*,int ) ;
 int writel (int ,int *) ;

void sci_controller_release_frame(struct isci_host *ihost, u32 frame_index)
{
 if (sci_unsolicited_frame_control_release_frame(&ihost->uf_control, frame_index))
  writel(ihost->uf_control.get,
   &ihost->scu_registers->sdma.unsolicited_frame_get_pointer);
}
