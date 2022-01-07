
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gsm_mux {int * dlci; int ftype; } ;
struct gsm_msg {int* data; } ;


 int EA ;
 struct gsm_msg* gsm_data_alloc (struct gsm_mux*,int ,int,int ) ;
 int gsm_data_queue (int ,struct gsm_msg*) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static void gsm_control_reply(struct gsm_mux *gsm, int cmd, const u8 *data,
     int dlen)
{
 struct gsm_msg *msg;
 msg = gsm_data_alloc(gsm, 0, dlen + 2, gsm->ftype);
 if (msg == ((void*)0))
  return;
 msg->data[0] = (cmd & 0xFE) << 1 | EA;
 msg->data[1] = (dlen << 1) | EA;
 memcpy(msg->data + 2, data, dlen);
 gsm_data_queue(gsm->dlci[0], msg);
}
