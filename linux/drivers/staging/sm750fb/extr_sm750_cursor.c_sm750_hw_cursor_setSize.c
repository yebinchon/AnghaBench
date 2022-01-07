
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lynx_cursor {int w; int h; } ;



void sm750_hw_cursor_setSize(struct lynx_cursor *cursor, int w, int h)
{
 cursor->w = w;
 cursor->h = h;
}
