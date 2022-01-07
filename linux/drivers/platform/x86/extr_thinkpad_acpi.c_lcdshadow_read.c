
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 scalar_t__ lcdshadow_state ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int lcdshadow_read(struct seq_file *m)
{
 if (lcdshadow_state < 0) {
  seq_puts(m, "status:\t\tnot supported\n");
 } else {
  seq_printf(m, "status:\t\t%d\n", lcdshadow_state);
  seq_puts(m, "commands:\t0, 1\n");
 }

 return 0;
}
