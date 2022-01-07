
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int domain; int node; } ;
struct pcifront_sd {struct pcifront_device* pdev; TYPE_1__ sd; } ;
struct pcifront_device {int dummy; } ;


 int first_online_node ;

__attribute__((used)) static inline void pcifront_init_sd(struct pcifront_sd *sd,
        unsigned int domain, unsigned int bus,
        struct pcifront_device *pdev)
{

 sd->sd.node = first_online_node;
 sd->sd.domain = domain;
 sd->pdev = pdev;
}
