
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int D0EPCTL_MPS_16 ;
 int D0EPCTL_MPS_32 ;
 int D0EPCTL_MPS_64 ;
 int D0EPCTL_MPS_8 ;
 int WARN_ON (int) ;

__attribute__((used)) static u32 dwc2_hsotg_ep0_mps(unsigned int mps)
{
 switch (mps) {
 case 64:
  return D0EPCTL_MPS_64;
 case 32:
  return D0EPCTL_MPS_32;
 case 16:
  return D0EPCTL_MPS_16;
 case 8:
  return D0EPCTL_MPS_8;
 }


 WARN_ON(1);
 return (u32)-1;
}
