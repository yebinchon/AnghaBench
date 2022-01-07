
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sis_video_info {int video_size; int hwcursor_size; int cmdQueueSize; int UMAsize; int sisfb_parm_mem; int video_offset; int sisfb_mem; int heapstart; scalar_t__ LFBsize; } ;



__attribute__((used)) static u32 sisfb_getheapsize(struct sis_video_info *ivideo)
{
 u32 max = ivideo->video_size - ivideo->hwcursor_size - ivideo->cmdQueueSize;
 u32 ret = 0;

 if(ivideo->UMAsize && ivideo->LFBsize) {
  if( (!ivideo->sisfb_parm_mem) ||
      ((ivideo->sisfb_parm_mem * 1024) > max) ||
      ((max - (ivideo->sisfb_parm_mem * 1024)) < ivideo->UMAsize) ) {
   ret = ivideo->UMAsize;
   max -= ivideo->UMAsize;
  } else {
   ret = max - (ivideo->sisfb_parm_mem * 1024);
   max = ivideo->sisfb_parm_mem * 1024;
  }
  ivideo->video_offset = ret;
  ivideo->sisfb_mem = max;
 } else {
  ret = max - ivideo->heapstart;
  ivideo->sisfb_mem = ivideo->heapstart;
 }

 return ret;
}
