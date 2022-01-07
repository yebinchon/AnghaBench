
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_color; } ;
struct rgb {int r; int g; int b; } ;



__attribute__((used)) static void rgb_background(struct vc_data *vc, const struct rgb *c)
{

 vc->vc_color = (vc->vc_color & 0x0f)
  | (c->r&0x80) >> 1 | (c->g&0x80) >> 2 | (c->b&0x80) >> 3;
}
