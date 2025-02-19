
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct dlm_rsb {int res_length; unsigned char* res_name; int res_flags; int res_toss_time; int res_dir_nodeid; int res_master_nodeid; int res_nodeid; } ;


 int dlm_our_nodeid () ;
 int isascii (unsigned char) ;
 int isprint (unsigned char) ;
 int lock_rsb (struct dlm_rsb*) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 int unlock_rsb (struct dlm_rsb*) ;

__attribute__((used)) static void print_format4(struct dlm_rsb *r, struct seq_file *s)
{
 int our_nodeid = dlm_our_nodeid();
 int print_name = 1;
 int i;

 lock_rsb(r);

 seq_printf(s, "rsb %p %d %d %d %d %lu %lx %d ",
     r,
     r->res_nodeid,
     r->res_master_nodeid,
     r->res_dir_nodeid,
     our_nodeid,
     r->res_toss_time,
     r->res_flags,
     r->res_length);

 for (i = 0; i < r->res_length; i++) {
  if (!isascii(r->res_name[i]) || !isprint(r->res_name[i]))
   print_name = 0;
 }

 seq_puts(s, print_name ? "str " : "hex");

 for (i = 0; i < r->res_length; i++) {
  if (print_name)
   seq_printf(s, "%c", r->res_name[i]);
  else
   seq_printf(s, " %02x", (unsigned char)r->res_name[i]);
 }
 seq_putc(s, '\n');
 unlock_rsb(r);
}
