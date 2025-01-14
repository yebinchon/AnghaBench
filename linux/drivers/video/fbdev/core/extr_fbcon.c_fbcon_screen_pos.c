
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {scalar_t__ vc_num; int vc_size_row; scalar_t__ vc_origin; } ;


 scalar_t__ fg_console ;
 unsigned long softback_buf ;
 int softback_curr ;
 unsigned long softback_end ;
 int softback_lines ;

__attribute__((used)) static u16 *fbcon_screen_pos(struct vc_data *vc, int offset)
{
 unsigned long p;
 int line;

 if (vc->vc_num != fg_console || !softback_lines)
  return (u16 *) (vc->vc_origin + offset);
 line = offset / vc->vc_size_row;
 if (line >= softback_lines)
  return (u16 *) (vc->vc_origin + offset -
    softback_lines * vc->vc_size_row);
 p = softback_curr + offset;
 if (p >= softback_end)
  p += softback_buf - softback_end;
 return (u16 *) p;
}
