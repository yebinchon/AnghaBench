
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_origin; scalar_t__ vc_visible_origin; } ;


 int vgacon_scrolldelta (struct vc_data*,int ) ;

__attribute__((used)) static void vgacon_restore_screen(struct vc_data *c)
{
 if (c->vc_origin != c->vc_visible_origin)
  vgacon_scrolldelta(c, 0);
}
