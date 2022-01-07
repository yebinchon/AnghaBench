
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_video_erase_char; } ;


 int sti_clear (int ,int,int,int,int,int ) ;
 int sticon_sti ;

__attribute__((used)) static void sticon_clear(struct vc_data *conp, int sy, int sx, int height,
    int width)
{
    if (!height || !width)
 return;

    sti_clear(sticon_sti, sy, sx, height, width, conp->vc_video_erase_char);
}
