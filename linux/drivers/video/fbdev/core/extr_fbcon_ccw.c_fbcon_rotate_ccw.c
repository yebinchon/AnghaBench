
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbcon_ops {int update_start; int cursor; int clear_margins; int putcs; int clear; int bmove; } ;


 int ccw_bmove ;
 int ccw_clear ;
 int ccw_clear_margins ;
 int ccw_cursor ;
 int ccw_putcs ;
 int ccw_update_start ;

void fbcon_rotate_ccw(struct fbcon_ops *ops)
{
 ops->bmove = ccw_bmove;
 ops->clear = ccw_clear;
 ops->putcs = ccw_putcs;
 ops->clear_margins = ccw_clear_margins;
 ops->cursor = ccw_cursor;
 ops->update_start = ccw_update_start;
}
