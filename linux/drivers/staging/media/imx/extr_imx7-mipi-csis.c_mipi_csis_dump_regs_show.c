
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct csi_state* private; } ;
struct csi_state {int dummy; } ;


 int mipi_csis_dump_regs (struct csi_state*) ;

__attribute__((used)) static int mipi_csis_dump_regs_show(struct seq_file *m, void *private)
{
 struct csi_state *state = m->private;

 return mipi_csis_dump_regs(state);
}
