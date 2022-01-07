
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vc_data {int dummy; } ;



__attribute__((used)) static u8 mdacon_build_attr(struct vc_data *c, u8 color, u8 intensity,
       u8 blink, u8 underline, u8 reverse, u8 italic)
{
 return (intensity & 3) |
  ((underline & 1) << 2) |
  ((reverse & 1) << 3) |
  (!!italic << 4) |
  ((blink & 1) << 7);
}
