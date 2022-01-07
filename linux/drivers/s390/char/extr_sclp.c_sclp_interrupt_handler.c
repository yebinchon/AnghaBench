
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sclp_req {int callback_data; int (* callback ) (struct sclp_req*,int ) ;int status; int list; } ;
struct ext_code {int dummy; } ;


 int IRQEXT_SCP ;
 int SCLP_REQ_DONE ;
 struct sclp_req* __sclp_find_req (int) ;
 int __sclp_queue_read_req () ;
 int del_timer (int *) ;
 int inc_irq_stat (int ) ;
 int list_del (int *) ;
 scalar_t__ sclp_activation_state ;
 scalar_t__ sclp_activation_state_active ;
 int sclp_lock ;
 int sclp_process_queue () ;
 int sclp_request_timer ;
 int sclp_running_state ;
 int sclp_running_state_idle ;
 int sclp_running_state_reset_pending ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct sclp_req*,int ) ;

__attribute__((used)) static void sclp_interrupt_handler(struct ext_code ext_code,
       unsigned int param32, unsigned long param64)
{
 struct sclp_req *req;
 u32 finished_sccb;
 u32 evbuf_pending;

 inc_irq_stat(IRQEXT_SCP);
 spin_lock(&sclp_lock);
 finished_sccb = param32 & 0xfffffff8;
 evbuf_pending = param32 & 0x3;
 if (finished_sccb) {
  del_timer(&sclp_request_timer);
  sclp_running_state = sclp_running_state_reset_pending;
  req = __sclp_find_req(finished_sccb);
  if (req) {

   list_del(&req->list);
   req->status = SCLP_REQ_DONE;
   if (req->callback) {
    spin_unlock(&sclp_lock);
    req->callback(req, req->callback_data);
    spin_lock(&sclp_lock);
   }
  }
  sclp_running_state = sclp_running_state_idle;
 }
 if (evbuf_pending &&
     sclp_activation_state == sclp_activation_state_active)
  __sclp_queue_read_req();
 spin_unlock(&sclp_lock);
 sclp_process_queue();
}
