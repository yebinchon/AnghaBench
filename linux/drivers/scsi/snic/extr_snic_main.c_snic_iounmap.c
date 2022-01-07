
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vaddr; } ;
struct snic {TYPE_1__ bar0; } ;


 int iounmap (scalar_t__) ;

__attribute__((used)) static void
snic_iounmap(struct snic *snic)
{
 if (snic->bar0.vaddr)
  iounmap(snic->bar0.vaddr);
}
