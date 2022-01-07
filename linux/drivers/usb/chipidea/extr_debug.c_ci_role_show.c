
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct ci_hdrc* private; } ;
struct ci_hdrc {scalar_t__ role; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ CI_ROLE_END ;
 TYPE_1__* ci_role (struct ci_hdrc*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int ci_role_show(struct seq_file *s, void *data)
{
 struct ci_hdrc *ci = s->private;

 if (ci->role != CI_ROLE_END)
  seq_printf(s, "%s\n", ci_role(ci)->name);

 return 0;
}
