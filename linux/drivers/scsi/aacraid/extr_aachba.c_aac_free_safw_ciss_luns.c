
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int * safw_phys_luns; } ;


 int kfree (int *) ;

__attribute__((used)) static inline void aac_free_safw_ciss_luns(struct aac_dev *dev)
{
 kfree(dev->safw_phys_luns);
 dev->safw_phys_luns = ((void*)0);
}
