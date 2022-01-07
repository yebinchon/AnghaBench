
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amvdec_session {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;

__attribute__((used)) static irqreturn_t codec_mpeg12_isr(struct amvdec_session *sess)
{
 return IRQ_WAKE_THREAD;
}
