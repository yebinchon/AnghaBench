
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int ieee80211_debug_level ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int show_debug_level(struct seq_file *m, void *v)
{
 seq_printf(m, "0x%08X\n", ieee80211_debug_level);

 return 0;
}
