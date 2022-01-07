
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct nls_table {int charset; } ;


 struct nls_table* load_nls_default () ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int unload_nls (struct nls_table*) ;

__attribute__((used)) static void
cifs_show_nls(struct seq_file *s, struct nls_table *cur)
{
 struct nls_table *def;


 def = load_nls_default();
 if (def != cur)
  seq_printf(s, ",iocharset=%s", cur->charset);
 unload_nls(def);
}
