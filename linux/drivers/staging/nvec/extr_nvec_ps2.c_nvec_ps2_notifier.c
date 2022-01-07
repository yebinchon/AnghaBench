
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {int ser_dev; } ;


 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int NVEC_PHD (char*,unsigned char*,unsigned char) ;


 TYPE_1__ ps2_dev ;
 int serio_interrupt (int ,unsigned char,int ) ;

__attribute__((used)) static int nvec_ps2_notifier(struct notifier_block *nb,
        unsigned long event_type, void *data)
{
 int i;
 unsigned char *msg = data;

 switch (event_type) {
 case 128:
  for (i = 0; i < msg[1]; i++)
   serio_interrupt(ps2_dev.ser_dev, msg[2 + i], 0);
  NVEC_PHD("ps/2 mouse event: ", &msg[2], msg[1]);
  return NOTIFY_STOP;

 case 129:
  if (msg[2] == 1) {
   for (i = 0; i < (msg[1] - 2); i++)
    serio_interrupt(ps2_dev.ser_dev, msg[i + 4], 0);
   NVEC_PHD("ps/2 mouse reply: ", &msg[4], msg[1] - 2);
  }

  else if (msg[1] != 2)
   NVEC_PHD("unhandled mouse event: ", msg, msg[1] + 2);
  return NOTIFY_STOP;
 }

 return NOTIFY_DONE;
}
