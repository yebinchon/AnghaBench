
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmc_dev {int init; } ;


 int ENODEV ;
 struct pmc_dev pmc_device ;
 int pmc_reg_read (struct pmc_dev*,int) ;

int pmc_atom_read(int offset, u32 *value)
{
 struct pmc_dev *pmc = &pmc_device;

 if (!pmc->init)
  return -ENODEV;

 *value = pmc_reg_read(pmc, offset);
 return 0;
}
