
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_ring {int cycle_state; } ;
struct seq_file {scalar_t__ private; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int xhci_ring_cycle_show(struct seq_file *s, void *unused)
{
 struct xhci_ring *ring = *(struct xhci_ring **)s->private;

 seq_printf(s, "%d\n", ring->cycle_state);

 return 0;
}
