
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sis_video_info {int video_size; int UMAsize; int LFBsize; int chip; int revision_id; int nbridge; } ;


 int SISCR ;
 int SISSR ;
 int SiS_GetReg (int ,int) ;


 int pci_read_config_byte (int ,int,int*) ;

__attribute__((used)) static int sisfb_get_dram_size(struct sis_video_info *ivideo)
{




 ivideo->video_size = 0;
 ivideo->UMAsize = ivideo->LFBsize = 0;

 switch(ivideo->chip) {
 default:
  return -1;
 }
 return 0;
}
