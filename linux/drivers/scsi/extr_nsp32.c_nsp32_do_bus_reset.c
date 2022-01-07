
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sync_flag; } ;
typedef TYPE_1__ nsp32_target ;
struct TYPE_8__ {unsigned int BaseAddress; int * CurrentSC; TYPE_1__* target; } ;
typedef TYPE_2__ nsp32_hw_data ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BM_CNT ;
 int BUSCTL_RST ;
 int CLRCOUNTER_ALLMASK ;
 int CLR_COUNTER ;
 int IRQ_STATUS ;
 int NSP32_DEBUG_BUSRESET ;
 int RESET_HOLD_TIME ;
 int SCSI_BUS_CONTROL ;
 int TRANSFER_CONTROL ;
 int mdelay (int) ;
 int nsp32_dbg (int ,char*,...) ;
 unsigned short nsp32_read2 (unsigned int,int ) ;
 int nsp32_set_async (TYPE_2__*,TYPE_1__*) ;
 int nsp32_write1 (unsigned int,int ,int ) ;
 int nsp32_write2 (unsigned int,int ,int ) ;
 int nsp32_write4 (unsigned int,int ,int ) ;

__attribute__((used)) static void nsp32_do_bus_reset(nsp32_hw_data *data)
{
 unsigned int base = data->BaseAddress;
 unsigned short intrdat;
 int i;

 nsp32_dbg(NSP32_DEBUG_BUSRESET, "in");






 nsp32_write2(base, TRANSFER_CONTROL, 0);
 nsp32_write4(base, BM_CNT, 0);
 nsp32_write4(base, CLR_COUNTER, CLRCOUNTER_ALLMASK);





 for (i = 0; i < ARRAY_SIZE(data->target); i++) {
  nsp32_target *target = &data->target[i];

  target->sync_flag = 0;
  nsp32_set_async(data, target);
 }




 nsp32_write1(base, SCSI_BUS_CONTROL, BUSCTL_RST);
 mdelay(RESET_HOLD_TIME / 1000);
 nsp32_write1(base, SCSI_BUS_CONTROL, 0);
 for(i = 0; i < 5; i++) {
  intrdat = nsp32_read2(base, IRQ_STATUS);
  nsp32_dbg(NSP32_DEBUG_BUSRESET, "irq:1: 0x%x", intrdat);
        }

 data->CurrentSC = ((void*)0);
}
