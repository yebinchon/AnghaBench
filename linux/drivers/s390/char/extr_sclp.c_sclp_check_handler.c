
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct ext_code {int dummy; } ;
typedef scalar_t__ addr_t ;
struct TYPE_2__ {int status; } ;


 int IRQEXT_SCP ;
 int SCLP_REQ_DONE ;
 int inc_irq_stat (int ) ;
 int panic (char*,unsigned int) ;
 TYPE_1__ sclp_init_req ;
 scalar_t__ sclp_init_sccb ;
 int sclp_lock ;
 scalar_t__ sclp_running_state ;
 scalar_t__ sclp_running_state_idle ;
 scalar_t__ sclp_running_state_running ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sclp_check_handler(struct ext_code ext_code,
          unsigned int param32, unsigned long param64)
{
 u32 finished_sccb;

 inc_irq_stat(IRQEXT_SCP);
 finished_sccb = param32 & 0xfffffff8;

 if (finished_sccb == 0)
  return;
 if (finished_sccb != (u32) (addr_t) sclp_init_sccb)
  panic("sclp: unsolicited interrupt for buffer at 0x%x\n",
        finished_sccb);
 spin_lock(&sclp_lock);
 if (sclp_running_state == sclp_running_state_running) {
  sclp_init_req.status = SCLP_REQ_DONE;
  sclp_running_state = sclp_running_state_idle;
 }
 spin_unlock(&sclp_lock);
}
