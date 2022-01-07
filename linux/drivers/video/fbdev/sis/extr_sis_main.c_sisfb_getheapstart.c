
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sis_video_info {int sisfb_parm_mem; int video_size; int hwcursor_size; int cmdQueueSize; scalar_t__ sisvga_engine; scalar_t__ cardnumber; scalar_t__ LFBsize; scalar_t__ UMAsize; } ;


 scalar_t__ SIS_300_VGA ;

__attribute__((used)) static u32 sisfb_getheapstart(struct sis_video_info *ivideo)
{
 u32 ret = ivideo->sisfb_parm_mem * 1024;
 u32 maxoffs = ivideo->video_size - ivideo->hwcursor_size - ivideo->cmdQueueSize;
 u32 def;
 if(ivideo->sisvga_engine == SIS_300_VGA) {
  if(ivideo->video_size > 0x1000000) {
   def = 0xc00000;
  } else if(ivideo->video_size > 0x800000) {
   def = 0x800000;
  } else {
   def = 0x400000;
  }
 } else if(ivideo->UMAsize && ivideo->LFBsize) {
  ret = def = 0;
 } else {
  def = maxoffs - 0x8000;
 }


 if((!ret) || (ret > maxoffs) || (ivideo->cardnumber != 0))
  ret = def;

 return ret;
}
