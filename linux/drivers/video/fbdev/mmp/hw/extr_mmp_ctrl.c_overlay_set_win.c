
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_win {int* pitch; int ysrc; int xsrc; int ydst; int xdst; int ypos; int xpos; } ;
struct mmp_overlay {int access_ok; int win; int path; } ;
struct lcd_regs {int g_start; int g_size_z; int g_size; int g_pitch; int v_start; int v_size_z; int v_size; int v_pitch_uv; int v_pitch_yc; } ;


 int dmafetch_set_fmt (struct mmp_overlay*) ;
 int memcpy (int *,struct mmp_win*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ overlay_is_vid (struct mmp_overlay*) ;
 struct lcd_regs* path_regs (int ) ;
 int writel_relaxed (int,int *) ;

__attribute__((used)) static void overlay_set_win(struct mmp_overlay *overlay, struct mmp_win *win)
{
 struct lcd_regs *regs = path_regs(overlay->path);


 memcpy(&overlay->win, win, sizeof(struct mmp_win));

 mutex_lock(&overlay->access_ok);

 if (overlay_is_vid(overlay)) {
  writel_relaxed(win->pitch[0], &regs->v_pitch_yc);
  writel_relaxed(win->pitch[2] << 16 |
    win->pitch[1], &regs->v_pitch_uv);

  writel_relaxed((win->ysrc << 16) | win->xsrc, &regs->v_size);
  writel_relaxed((win->ydst << 16) | win->xdst, &regs->v_size_z);
  writel_relaxed(win->ypos << 16 | win->xpos, &regs->v_start);
 } else {
  writel_relaxed(win->pitch[0], &regs->g_pitch);

  writel_relaxed((win->ysrc << 16) | win->xsrc, &regs->g_size);
  writel_relaxed((win->ydst << 16) | win->xdst, &regs->g_size_z);
  writel_relaxed(win->ypos << 16 | win->xpos, &regs->g_start);
 }

 dmafetch_set_fmt(overlay);
 mutex_unlock(&overlay->access_ok);
}
