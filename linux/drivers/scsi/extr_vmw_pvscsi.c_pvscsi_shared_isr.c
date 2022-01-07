
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvscsi_adapter {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int PVSCSI_INTR_ALL_SUPPORTED ;
 int pvscsi_isr (int,void*) ;
 int pvscsi_read_intr_status (struct pvscsi_adapter*) ;
 int pvscsi_write_intr_status (void*,int) ;

__attribute__((used)) static irqreturn_t pvscsi_shared_isr(int irq, void *devp)
{
 struct pvscsi_adapter *adapter = devp;
 u32 val = pvscsi_read_intr_status(adapter);

 if (!(val & PVSCSI_INTR_ALL_SUPPORTED))
  return IRQ_NONE;
 pvscsi_write_intr_status(devp, val);
 return pvscsi_isr(irq, devp);
}
