
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1362_hcd {int stat1; int stat2; int stat4; int stat8; int stat16; } ;



__attribute__((used)) static inline void ALIGNSTAT(struct isp1362_hcd *isp1362_hcd, void *ptr)
{
 unsigned long p = (unsigned long)ptr;
 if (!(p & 0xf))
  isp1362_hcd->stat16++;
 else if (!(p & 0x7))
  isp1362_hcd->stat8++;
 else if (!(p & 0x3))
  isp1362_hcd->stat4++;
 else if (!(p & 0x1))
  isp1362_hcd->stat2++;
 else
  isp1362_hcd->stat1++;
}
