
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_video_erase_char; int vc_cols; } ;
struct sti_struct {int dummy; } ;
typedef enum con_scroll { ____Placeholder_con_scroll } con_scroll ;


 int CM_ERASE ;


 int sti_bmove (struct sti_struct*,unsigned int,int ,unsigned int,int ,unsigned int,int ) ;
 int sti_clear (struct sti_struct*,unsigned int,int ,unsigned int,int ,int ) ;
 int sticon_cursor (struct vc_data*,int ) ;
 struct sti_struct* sticon_sti ;
 scalar_t__ vga_is_gfx ;

__attribute__((used)) static bool sticon_scroll(struct vc_data *conp, unsigned int t,
  unsigned int b, enum con_scroll dir, unsigned int count)
{
    struct sti_struct *sti = sticon_sti;

    if (vga_is_gfx)
        return 0;

    sticon_cursor(conp, CM_ERASE);

    switch (dir) {
    case 128:
 sti_bmove(sti, t + count, 0, t, 0, b - t - count, conp->vc_cols);
 sti_clear(sti, b - count, 0, count, conp->vc_cols, conp->vc_video_erase_char);
 break;

    case 129:
 sti_bmove(sti, t, 0, t + count, 0, b - t - count, conp->vc_cols);
 sti_clear(sti, t, 0, count, conp->vc_cols, conp->vc_video_erase_char);
 break;
    }

    return 0;
}
