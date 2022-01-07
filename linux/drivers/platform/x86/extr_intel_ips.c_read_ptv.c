
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ips_driver {int dummy; } ;


 int PTV_MASK ;
 int THM_PTV ;
 int thm_readw (int ) ;

__attribute__((used)) static u16 read_ptv(struct ips_driver *ips)
{
 u16 val;

 val = thm_readw(THM_PTV) & PTV_MASK;

 return val;
}
