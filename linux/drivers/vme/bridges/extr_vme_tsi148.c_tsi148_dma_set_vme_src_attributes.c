
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 int TSI148_LCSR_DSAT_2eSSTM_160 ;
 int TSI148_LCSR_DSAT_2eSSTM_267 ;
 int TSI148_LCSR_DSAT_2eSSTM_320 ;
 int TSI148_LCSR_DSAT_AMODE_A16 ;
 int TSI148_LCSR_DSAT_AMODE_A24 ;
 int TSI148_LCSR_DSAT_AMODE_A32 ;
 int TSI148_LCSR_DSAT_AMODE_A64 ;
 int TSI148_LCSR_DSAT_AMODE_CRCSR ;
 int TSI148_LCSR_DSAT_AMODE_USER1 ;
 int TSI148_LCSR_DSAT_AMODE_USER2 ;
 int TSI148_LCSR_DSAT_AMODE_USER3 ;
 int TSI148_LCSR_DSAT_AMODE_USER4 ;
 int TSI148_LCSR_DSAT_DBW_16 ;
 int TSI148_LCSR_DSAT_DBW_32 ;
 int TSI148_LCSR_DSAT_PGM ;
 int TSI148_LCSR_DSAT_SUP ;
 int TSI148_LCSR_DSAT_TM_2eSST ;
 int TSI148_LCSR_DSAT_TM_2eSSTB ;
 int TSI148_LCSR_DSAT_TM_2eVME ;
 int TSI148_LCSR_DSAT_TM_BLT ;
 int TSI148_LCSR_DSAT_TM_MBLT ;
 int TSI148_LCSR_DSAT_TM_SCT ;
 int VME_2eSST ;



 int VME_2eSSTB ;
 int VME_2eVME ;




 int VME_BLT ;



 int VME_MBLT ;
 int VME_PROG ;
 int VME_SCT ;
 int VME_SUPER ;




 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int tsi148_dma_set_vme_src_attributes(struct device *dev, __be32 *attr,
 u32 aspace, u32 cycle, u32 dwidth)
{
 u32 val;

 val = be32_to_cpu(*attr);


 switch (cycle & (141 | 140 | 139)) {
 case 141:
  val |= TSI148_LCSR_DSAT_2eSSTM_160;
  break;
 case 140:
  val |= TSI148_LCSR_DSAT_2eSSTM_267;
  break;
 case 139:
  val |= TSI148_LCSR_DSAT_2eSSTM_320;
  break;
 }


 if (cycle & VME_SCT)
  val |= TSI148_LCSR_DSAT_TM_SCT;

 if (cycle & VME_BLT)
  val |= TSI148_LCSR_DSAT_TM_BLT;

 if (cycle & VME_MBLT)
  val |= TSI148_LCSR_DSAT_TM_MBLT;

 if (cycle & VME_2eVME)
  val |= TSI148_LCSR_DSAT_TM_2eVME;

 if (cycle & VME_2eSST)
  val |= TSI148_LCSR_DSAT_TM_2eSST;

 if (cycle & VME_2eSSTB) {
  dev_err(dev, "Currently not setting Broadcast Select "
   "Registers\n");
  val |= TSI148_LCSR_DSAT_TM_2eSSTB;
 }


 switch (dwidth) {
 case 133:
  val |= TSI148_LCSR_DSAT_DBW_16;
  break;
 case 132:
  val |= TSI148_LCSR_DSAT_DBW_32;
  break;
 default:
  dev_err(dev, "Invalid data width\n");
  return -EINVAL;
 }


 switch (aspace) {
 case 138:
  val |= TSI148_LCSR_DSAT_AMODE_A16;
  break;
 case 137:
  val |= TSI148_LCSR_DSAT_AMODE_A24;
  break;
 case 136:
  val |= TSI148_LCSR_DSAT_AMODE_A32;
  break;
 case 135:
  val |= TSI148_LCSR_DSAT_AMODE_A64;
  break;
 case 134:
  val |= TSI148_LCSR_DSAT_AMODE_CRCSR;
  break;
 case 131:
  val |= TSI148_LCSR_DSAT_AMODE_USER1;
  break;
 case 130:
  val |= TSI148_LCSR_DSAT_AMODE_USER2;
  break;
 case 129:
  val |= TSI148_LCSR_DSAT_AMODE_USER3;
  break;
 case 128:
  val |= TSI148_LCSR_DSAT_AMODE_USER4;
  break;
 default:
  dev_err(dev, "Invalid address space\n");
  return -EINVAL;
  break;
 }

 if (cycle & VME_SUPER)
  val |= TSI148_LCSR_DSAT_SUP;
 if (cycle & VME_PROG)
  val |= TSI148_LCSR_DSAT_PGM;

 *attr = cpu_to_be32(val);

 return 0;
}
