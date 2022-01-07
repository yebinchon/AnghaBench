
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_ntb_dev {int dummy; } ;
typedef enum ntb_topo { ____Placeholder_ntb_topo } ntb_topo ;


 int NTB_TOPO_B2B_DSD ;
 int NTB_TOPO_B2B_USD ;
 int NTB_TOPO_NONE ;
 int NTB_TOPO_PRI ;
 int NTB_TOPO_SEC ;


 int XEON_PPD_TOPO_MASK ;





enum ntb_topo xeon_ppd_topo(struct intel_ntb_dev *ndev, u8 ppd)
{
 switch (ppd & XEON_PPD_TOPO_MASK) {
 case 132:
  return NTB_TOPO_B2B_USD;

 case 133:
  return NTB_TOPO_B2B_DSD;

 case 130:
 case 131:
  return NTB_TOPO_PRI;

 case 128:
 case 129:
  return NTB_TOPO_SEC;
 }

 return NTB_TOPO_NONE;
}
