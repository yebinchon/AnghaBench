
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcie_link_state {TYPE_1__* pdev; } ;
struct TYPE_2__ {int * link_state; } ;


 int kfree (struct pcie_link_state*) ;

__attribute__((used)) static void free_link_state(struct pcie_link_state *link)
{
 link->pdev->link_state = ((void*)0);
 kfree(link);
}
