
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct csi_state {int slock; TYPE_1__* events; scalar_t__ debug; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int mask; int counter; } ;


 int IRQ_HANDLED ;
 int MIPI_CSIS_INTSRC ;
 int MIPI_CSIS_INTSRC_ERRORS ;
 unsigned int MIPI_CSIS_NUM_EVENTS ;
 int mipi_csis_read (struct csi_state*,int ) ;
 int mipi_csis_write (struct csi_state*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t mipi_csis_irq_handler(int irq, void *dev_id)
{
 struct csi_state *state = dev_id;
 unsigned long flags;
 unsigned int i;
 u32 status;

 status = mipi_csis_read(state, MIPI_CSIS_INTSRC);

 spin_lock_irqsave(&state->slock, flags);


 if ((status & MIPI_CSIS_INTSRC_ERRORS) || state->debug) {
  for (i = 0; i < MIPI_CSIS_NUM_EVENTS; i++) {
   if (!(status & state->events[i].mask))
    continue;
   state->events[i].counter++;
  }
 }
 spin_unlock_irqrestore(&state->slock, flags);

 mipi_csis_write(state, MIPI_CSIS_INTSRC, status);

 return IRQ_HANDLED;
}
