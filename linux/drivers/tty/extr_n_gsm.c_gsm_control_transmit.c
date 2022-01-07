
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {int * dlci; int ftype; } ;
struct gsm_msg {int* data; } ;
struct gsm_control {int cmd; int len; int data; } ;


 int EA ;
 struct gsm_msg* gsm_data_alloc (struct gsm_mux*,int ,int ,int ) ;
 int gsm_data_queue (int ,struct gsm_msg*) ;
 int memcpy (int*,int ,int ) ;

__attribute__((used)) static void gsm_control_transmit(struct gsm_mux *gsm, struct gsm_control *ctrl)
{
 struct gsm_msg *msg = gsm_data_alloc(gsm, 0, ctrl->len + 1, gsm->ftype);
 if (msg == ((void*)0))
  return;
 msg->data[0] = (ctrl->cmd << 1) | 2 | EA;
 memcpy(msg->data + 1, ctrl->data, ctrl->len);
 gsm_data_queue(gsm->dlci[0], msg);
}
