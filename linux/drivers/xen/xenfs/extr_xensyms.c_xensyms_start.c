
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int symnum; } ;
struct TYPE_5__ {TYPE_1__ symdata; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct xensyms {TYPE_3__ op; } ;
struct seq_file {void* private; } ;
typedef int loff_t ;


 scalar_t__ xensyms_next_sym (struct xensyms*) ;

__attribute__((used)) static void *xensyms_start(struct seq_file *m, loff_t *pos)
{
 struct xensyms *xs = (struct xensyms *)m->private;

 xs->op.u.symdata.symnum = *pos;

 if (xensyms_next_sym(xs))
  return ((void*)0);

 return m->private;
}
