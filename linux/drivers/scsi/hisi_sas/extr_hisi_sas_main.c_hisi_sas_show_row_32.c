
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void hisi_sas_show_row_32(struct seq_file *s, int index,
     int sz, __le32 *ptr)
{
 int i;


 seq_printf(s, "index %04d:\n\t", index);
 for (i = 1; i <= sz / 4; i++, ptr++) {
  seq_printf(s, " 0x%08x", le32_to_cpu(*ptr));
  if (!(i % 4))
   seq_puts(s, "\n\t");
 }
 seq_puts(s, "\n");
}
