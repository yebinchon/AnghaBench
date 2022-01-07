
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; int local; int global; } ;
struct uwb_rc {TYPE_1__ drp_avail; } ;
struct seq_file {struct uwb_rc* private; } ;


 int UWB_NUM_MAS ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int drp_avail_show(struct seq_file *s, void *p)
{
 struct uwb_rc *rc = s->private;

 seq_printf(s, "global:  %*pb\n", UWB_NUM_MAS, rc->drp_avail.global);
 seq_printf(s, "local:   %*pb\n", UWB_NUM_MAS, rc->drp_avail.local);
 seq_printf(s, "pending: %*pb\n", UWB_NUM_MAS, rc->drp_avail.pending);

 return 0;
}
