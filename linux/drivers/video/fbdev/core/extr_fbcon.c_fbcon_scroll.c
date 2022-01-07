
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {size_t vc_num; unsigned int vc_rows; unsigned int vc_cols; unsigned int vc_size_row; int vc_video_erase_char; int vc_origin; } ;
struct fbcon_display {int vrows; int yscroll; int scrollmode; } ;
struct fb_info {int flags; } ;
typedef enum con_scroll { ____Placeholder_con_scroll } con_scroll ;


 int CM_ERASE ;
 int FBINFO_PARTIAL_PAN_OK ;
 int FBINFO_READS_FAST ;







 size_t* con2fb_map ;
 struct fbcon_display* fb_display ;
 int fbcon_bmove (struct vc_data*,unsigned int,int ,unsigned int,int ,unsigned int,unsigned int) ;
 int fbcon_clear (struct vc_data*,unsigned int,int ,unsigned int,unsigned int) ;
 int fbcon_cursor (struct vc_data*,int ) ;
 scalar_t__ fbcon_is_inactive (struct vc_data*,struct fb_info*) ;
 int fbcon_redraw (struct vc_data*,struct fbcon_display*,unsigned int,unsigned int,unsigned int) ;
 int fbcon_redraw_blit (struct vc_data*,struct fb_info*,struct fbcon_display*,unsigned int,unsigned int,unsigned int) ;
 int fbcon_redraw_move (struct vc_data*,struct fbcon_display*,unsigned int,unsigned int,unsigned int) ;
 int fbcon_softback_note (struct vc_data*,unsigned int,unsigned int) ;
 int logo_shown ;
 struct fb_info** registered_fb ;
 int scr_memsetw (unsigned short*,int ,unsigned int) ;
 int softback_top ;
 int ypan_down (struct vc_data*,unsigned int) ;
 int ypan_down_redraw (struct vc_data*,unsigned int,unsigned int) ;
 int ypan_up (struct vc_data*,unsigned int) ;
 int ypan_up_redraw (struct vc_data*,unsigned int,unsigned int) ;
 int ywrap_down (struct vc_data*,unsigned int) ;
 int ywrap_up (struct vc_data*,unsigned int) ;

__attribute__((used)) static bool fbcon_scroll(struct vc_data *vc, unsigned int t, unsigned int b,
  enum con_scroll dir, unsigned int count)
{
 struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
 struct fbcon_display *p = &fb_display[vc->vc_num];
 int scroll_partial = info->flags & FBINFO_PARTIAL_PAN_OK;

 if (fbcon_is_inactive(vc, info))
  return 1;

 fbcon_cursor(vc, CM_ERASE);







 switch (dir) {
 case 128:
  if (count > vc->vc_rows)
   count = vc->vc_rows;
  if (softback_top)
   fbcon_softback_note(vc, t, count);
  if (logo_shown >= 0)
   goto redraw_up;
  switch (p->scrollmode) {
  case 134:
   fbcon_redraw_blit(vc, info, p, t, b - t - count,
         count);
   fbcon_clear(vc, b - count, 0, count, vc->vc_cols);
   scr_memsetw((unsigned short *) (vc->vc_origin +
       vc->vc_size_row *
       (b - count)),
        vc->vc_video_erase_char,
        vc->vc_size_row * count);
   return 1;
   break;

  case 130:
   if (b - t - count > 3 * vc->vc_rows >> 2) {
    if (t > 0)
     fbcon_bmove(vc, 0, 0, count, 0, t,
          vc->vc_cols);
    ywrap_up(vc, count);
    if (vc->vc_rows - b > 0)
     fbcon_bmove(vc, b - count, 0, b, 0,
          vc->vc_rows - b,
          vc->vc_cols);
   } else if (info->flags & FBINFO_READS_FAST)
    fbcon_bmove(vc, t + count, 0, t, 0,
         b - t - count, vc->vc_cols);
   else
    goto redraw_up;
   fbcon_clear(vc, b - count, 0, count, vc->vc_cols);
   break;

  case 132:
   if ((p->yscroll + count <=
        2 * (p->vrows - vc->vc_rows))
       && ((!scroll_partial && (b - t == vc->vc_rows))
    || (scroll_partial
        && (b - t - count >
     3 * vc->vc_rows >> 2)))) {
    if (t > 0)
     fbcon_redraw_move(vc, p, 0, t, count);
    ypan_up_redraw(vc, t, count);
    if (vc->vc_rows - b > 0)
     fbcon_redraw_move(vc, p, b,
         vc->vc_rows - b, b);
   } else
    fbcon_redraw_move(vc, p, t + count, b - t - count, t);
   fbcon_clear(vc, b - count, 0, count, vc->vc_cols);
   break;

  case 133:
   if ((p->yscroll + count <=
        2 * (p->vrows - vc->vc_rows))
       && ((!scroll_partial && (b - t == vc->vc_rows))
    || (scroll_partial
        && (b - t - count >
     3 * vc->vc_rows >> 2)))) {
    if (t > 0)
     fbcon_bmove(vc, 0, 0, count, 0, t,
          vc->vc_cols);
    ypan_up(vc, count);
    if (vc->vc_rows - b > 0)
     fbcon_bmove(vc, b - count, 0, b, 0,
          vc->vc_rows - b,
          vc->vc_cols);
   } else if (info->flags & FBINFO_READS_FAST)
    fbcon_bmove(vc, t + count, 0, t, 0,
         b - t - count, vc->vc_cols);
   else
    goto redraw_up;
   fbcon_clear(vc, b - count, 0, count, vc->vc_cols);
   break;

  case 131:
        redraw_up:
   fbcon_redraw(vc, p, t, b - t - count,
         count * vc->vc_cols);
   fbcon_clear(vc, b - count, 0, count, vc->vc_cols);
   scr_memsetw((unsigned short *) (vc->vc_origin +
       vc->vc_size_row *
       (b - count)),
        vc->vc_video_erase_char,
        vc->vc_size_row * count);
   return 1;
  }
  break;

 case 129:
  if (count > vc->vc_rows)
   count = vc->vc_rows;
  if (logo_shown >= 0)
   goto redraw_down;
  switch (p->scrollmode) {
  case 134:
   fbcon_redraw_blit(vc, info, p, b - 1, b - t - count,
         -count);
   fbcon_clear(vc, t, 0, count, vc->vc_cols);
   scr_memsetw((unsigned short *) (vc->vc_origin +
       vc->vc_size_row *
       t),
        vc->vc_video_erase_char,
        vc->vc_size_row * count);
   return 1;
   break;

  case 130:
   if (b - t - count > 3 * vc->vc_rows >> 2) {
    if (vc->vc_rows - b > 0)
     fbcon_bmove(vc, b, 0, b - count, 0,
          vc->vc_rows - b,
          vc->vc_cols);
    ywrap_down(vc, count);
    if (t > 0)
     fbcon_bmove(vc, count, 0, 0, 0, t,
          vc->vc_cols);
   } else if (info->flags & FBINFO_READS_FAST)
    fbcon_bmove(vc, t, 0, t + count, 0,
         b - t - count, vc->vc_cols);
   else
    goto redraw_down;
   fbcon_clear(vc, t, 0, count, vc->vc_cols);
   break;

  case 133:
   if ((count - p->yscroll <= p->vrows - vc->vc_rows)
       && ((!scroll_partial && (b - t == vc->vc_rows))
    || (scroll_partial
        && (b - t - count >
     3 * vc->vc_rows >> 2)))) {
    if (vc->vc_rows - b > 0)
     fbcon_bmove(vc, b, 0, b - count, 0,
          vc->vc_rows - b,
          vc->vc_cols);
    ypan_down(vc, count);
    if (t > 0)
     fbcon_bmove(vc, count, 0, 0, 0, t,
          vc->vc_cols);
   } else if (info->flags & FBINFO_READS_FAST)
    fbcon_bmove(vc, t, 0, t + count, 0,
         b - t - count, vc->vc_cols);
   else
    goto redraw_down;
   fbcon_clear(vc, t, 0, count, vc->vc_cols);
   break;

  case 132:
   if ((count - p->yscroll <= p->vrows - vc->vc_rows)
       && ((!scroll_partial && (b - t == vc->vc_rows))
    || (scroll_partial
        && (b - t - count >
     3 * vc->vc_rows >> 2)))) {
    if (vc->vc_rows - b > 0)
     fbcon_redraw_move(vc, p, b, vc->vc_rows - b,
         b - count);
    ypan_down_redraw(vc, t, count);
    if (t > 0)
     fbcon_redraw_move(vc, p, count, t, 0);
   } else
    fbcon_redraw_move(vc, p, t, b - t - count, t + count);
   fbcon_clear(vc, t, 0, count, vc->vc_cols);
   break;

  case 131:
        redraw_down:
   fbcon_redraw(vc, p, b - 1, b - t - count,
         -count * vc->vc_cols);
   fbcon_clear(vc, t, 0, count, vc->vc_cols);
   scr_memsetw((unsigned short *) (vc->vc_origin +
       vc->vc_size_row *
       t),
        vc->vc_video_erase_char,
        vc->vc_size_row * count);
   return 1;
  }
 }
 return 0;
}
