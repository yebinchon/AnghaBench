
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xenpf_symdata {int type; int address; } ;
struct TYPE_3__ {struct xenpf_symdata symdata; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct xensyms {int name; TYPE_2__ op; } ;
struct seq_file {scalar_t__ private; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;

__attribute__((used)) static int xensyms_show(struct seq_file *m, void *p)
{
 struct xensyms *xs = (struct xensyms *)m->private;
 struct xenpf_symdata *symdata = &xs->op.u.symdata;

 seq_printf(m, "%016llx %c %s\n", symdata->address,
     symdata->type, xs->name);

 return 0;
}
