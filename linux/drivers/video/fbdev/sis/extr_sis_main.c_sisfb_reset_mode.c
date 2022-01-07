
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_video_info {int current_base; } ;


 int sisfb_set_base_CRT1 (struct sis_video_info*,int ) ;
 int sisfb_set_base_CRT2 (struct sis_video_info*,int ) ;
 scalar_t__ sisfb_set_mode (struct sis_video_info*,int ) ;
 int sisfb_set_pitch (struct sis_video_info*) ;

__attribute__((used)) static int
sisfb_reset_mode(struct sis_video_info *ivideo)
{
 if(sisfb_set_mode(ivideo, 0))
  return 1;

 sisfb_set_pitch(ivideo);
 sisfb_set_base_CRT1(ivideo, ivideo->current_base);
 sisfb_set_base_CRT2(ivideo, ivideo->current_base);

 return 0;
}
