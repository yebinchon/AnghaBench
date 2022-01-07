
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amvdec_session {scalar_t__ last_irq_jiffies; } ;


 scalar_t__ msecs_to_jiffies (int) ;
 int msleep (int) ;
 scalar_t__ time_is_after_jiffies64 (scalar_t__) ;

__attribute__((used)) static void vdec_wait_inactive(struct amvdec_session *sess)
{

 while (time_is_after_jiffies64(sess->last_irq_jiffies +
           msecs_to_jiffies(50)))
  msleep(25);
}
