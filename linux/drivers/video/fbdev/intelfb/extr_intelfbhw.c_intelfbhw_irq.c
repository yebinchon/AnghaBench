
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int wait; int count; int pan_offset; scalar_t__ pan_display; } ;
struct intelfb_info {int int_lock; TYPE_3__ vsync; TYPE_2__* info; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int vmode; } ;
struct TYPE_5__ {TYPE_1__ var; } ;


 int DSPABASE ;
 int FB_VMODE_INTERLACED ;
 int IIR ;
 int INREG (int ) ;
 int INREG16 (int ) ;
 int IRQ_RETVAL (int) ;
 int OUTREG (int ,int ) ;
 int OUTREG16 (int ,int ) ;
 int PIPEASTAT ;
 int PIPE_A_EVENT_INTERRUPT ;
 int VSYNC_PIPE_A_INTERRUPT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t intelfbhw_irq(int irq, void *dev_id)
{
 u16 tmp;
 struct intelfb_info *dinfo = dev_id;

 spin_lock(&dinfo->int_lock);

 tmp = INREG16(IIR);
 if (dinfo->info->var.vmode & FB_VMODE_INTERLACED)
  tmp &= PIPE_A_EVENT_INTERRUPT;
 else
  tmp &= VSYNC_PIPE_A_INTERRUPT;

 if (tmp == 0) {
  spin_unlock(&dinfo->int_lock);
  return IRQ_RETVAL(0);
 }


 OUTREG(PIPEASTAT, INREG(PIPEASTAT));

 OUTREG16(IIR, tmp);
 if (dinfo->vsync.pan_display) {
  dinfo->vsync.pan_display = 0;
  OUTREG(DSPABASE, dinfo->vsync.pan_offset);
 }

 dinfo->vsync.count++;
 wake_up_interruptible(&dinfo->vsync.wait);

 spin_unlock(&dinfo->int_lock);

 return IRQ_RETVAL(1);
}
