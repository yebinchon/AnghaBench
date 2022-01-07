
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcifront_sd {struct pcifront_device* pdev; } ;
struct pcifront_device {int dummy; } ;



__attribute__((used)) static inline struct pcifront_device *
pcifront_get_pdev(struct pcifront_sd *sd)
{
 return sd->pdev;
}
