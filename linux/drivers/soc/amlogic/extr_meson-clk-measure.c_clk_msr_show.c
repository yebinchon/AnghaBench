
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct meson_msr_id* private; } ;
struct meson_msr_id {int dummy; } ;


 int meson_measure_best_id (struct meson_msr_id*,unsigned int*) ;
 int seq_printf (struct seq_file*,char*,int,unsigned int) ;

__attribute__((used)) static int clk_msr_show(struct seq_file *s, void *data)
{
 struct meson_msr_id *clk_msr_id = s->private;
 unsigned int precision = 0;
 int val;

 val = meson_measure_best_id(clk_msr_id, &precision);
 if (val < 0)
  return val;

 seq_printf(s, "%d\t+/-%dHz\n", val, precision);

 return 0;
}
