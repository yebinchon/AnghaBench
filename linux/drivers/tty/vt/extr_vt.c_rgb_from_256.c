
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rgb {int r; int g; int b; } ;



__attribute__((used)) static void rgb_from_256(int i, struct rgb *c)
{
 if (i < 8) {
  c->r = i&1 ? 0xaa : 0x00;
  c->g = i&2 ? 0xaa : 0x00;
  c->b = i&4 ? 0xaa : 0x00;
 } else if (i < 16) {
  c->r = i&1 ? 0xff : 0x55;
  c->g = i&2 ? 0xff : 0x55;
  c->b = i&4 ? 0xff : 0x55;
 } else if (i < 232) {
  c->r = (i - 16) / 36 * 85 / 2;
  c->g = (i - 16) / 6 % 6 * 85 / 2;
  c->b = (i - 16) % 6 * 85 / 2;
 } else
  c->r = c->g = c->b = i * 10 - 2312;
}
