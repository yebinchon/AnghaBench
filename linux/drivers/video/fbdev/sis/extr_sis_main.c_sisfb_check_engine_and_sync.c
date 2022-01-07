
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sis_video_info {scalar_t__ sisvga_engine; } ;


 int IND_SIS_MODULE_ENABLE ;
 int IND_SIS_PCI_ADDRESS_SET ;
 int SISSR ;
 scalar_t__ SIS_300_VGA ;
 scalar_t__ SIS_315_VGA ;
 int SIS_MEM_MAP_IO_ENABLE ;
 int SiS_GetReg (int ,int) ;
 int sisfb_syncaccel (struct sis_video_info*) ;

__attribute__((used)) static void
sisfb_check_engine_and_sync(struct sis_video_info *ivideo)
{
 u8 cr30, cr31;






 cr30 = SiS_GetReg(SISSR, IND_SIS_PCI_ADDRESS_SET);
 cr31 = SiS_GetReg(SISSR, IND_SIS_MODULE_ENABLE);

 if((cr30 & SIS_MEM_MAP_IO_ENABLE) && (cr31 & 0x42)) {
 }
}
