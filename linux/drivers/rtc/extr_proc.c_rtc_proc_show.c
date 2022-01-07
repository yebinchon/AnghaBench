
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct rtc_device* private; } ;
struct rtc_wkalrm {scalar_t__ pending; scalar_t__ enabled; int time; } ;
struct rtc_time {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;
struct rtc_device {TYPE_2__ dev; int max_user_freq; int irq_freq; scalar_t__ pie_enabled; TYPE_1__ uie_rtctimer; struct rtc_class_ops* ops; } ;
struct rtc_class_ops {int (* proc ) (int ,struct seq_file*) ;} ;


 int rtc_read_alarm (struct rtc_device*,struct rtc_wkalrm*) ;
 int rtc_read_time (struct rtc_device*,struct rtc_time*) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int stub1 (int ,struct seq_file*) ;

__attribute__((used)) static int rtc_proc_show(struct seq_file *seq, void *offset)
{
 int err;
 struct rtc_device *rtc = seq->private;
 const struct rtc_class_ops *ops = rtc->ops;
 struct rtc_wkalrm alrm;
 struct rtc_time tm;

 err = rtc_read_time(rtc, &tm);
 if (err == 0) {
  seq_printf(seq,
      "rtc_time\t: %ptRt\n"
      "rtc_date\t: %ptRd\n",
      &tm, &tm);
 }

 err = rtc_read_alarm(rtc, &alrm);
 if (err == 0) {
  seq_printf(seq, "alrm_time\t: %ptRt\n", &alrm.time);
  seq_printf(seq, "alrm_date\t: %ptRd\n", &alrm.time);
  seq_printf(seq, "alarm_IRQ\t: %s\n",
      alrm.enabled ? "yes" : "no");
  seq_printf(seq, "alrm_pending\t: %s\n",
      alrm.pending ? "yes" : "no");
  seq_printf(seq, "update IRQ enabled\t: %s\n",
      (rtc->uie_rtctimer.enabled) ? "yes" : "no");
  seq_printf(seq, "periodic IRQ enabled\t: %s\n",
      (rtc->pie_enabled) ? "yes" : "no");
  seq_printf(seq, "periodic IRQ frequency\t: %d\n",
      rtc->irq_freq);
  seq_printf(seq, "max user IRQ frequency\t: %d\n",
      rtc->max_user_freq);
 }

 seq_printf(seq, "24hr\t\t: yes\n");

 if (ops->proc)
  ops->proc(rtc->dev.parent, seq);

 return 0;
}
