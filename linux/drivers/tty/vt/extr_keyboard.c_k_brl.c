
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ kbdmode; } ;


 int BRL_UC_ROW ;
 scalar_t__ VC_UNICODE ;
 scalar_t__ brl_timeout ;
 unsigned long jiffies ;
 int k_brlcommit (struct vc_data*,unsigned int,int ) ;
 int k_unicode (struct vc_data*,int ,char) ;
 TYPE_1__* kbd ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int pr_warn (char*) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;

__attribute__((used)) static void k_brl(struct vc_data *vc, unsigned char value, char up_flag)
{
 static unsigned pressed, committing;
 static unsigned long releasestart;

 if (kbd->kbdmode != VC_UNICODE) {
  if (!up_flag)
   pr_warn("keyboard mode must be unicode for braille patterns\n");
  return;
 }

 if (!value) {
  k_unicode(vc, BRL_UC_ROW, up_flag);
  return;
 }

 if (value > 8)
  return;

 if (!up_flag) {
  pressed |= 1 << (value - 1);
  if (!brl_timeout)
   committing = pressed;
 } else if (brl_timeout) {
  if (!committing ||
      time_after(jiffies,
          releasestart + msecs_to_jiffies(brl_timeout))) {
   committing = pressed;
   releasestart = jiffies;
  }
  pressed &= ~(1 << (value - 1));
  if (!pressed && committing) {
   k_brlcommit(vc, committing, 0);
   committing = 0;
  }
 } else {
  if (committing) {
   k_brlcommit(vc, committing, 0);
   committing = 0;
  }
  pressed &= ~(1 << (value - 1));
 }
}
