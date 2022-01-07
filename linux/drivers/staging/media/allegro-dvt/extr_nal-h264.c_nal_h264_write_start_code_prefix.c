
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rbsp {int* data; int pos; scalar_t__ size; int error; } ;


 scalar_t__ DIV_ROUND_UP (int,int) ;
 int EINVAL ;

__attribute__((used)) static void nal_h264_write_start_code_prefix(struct rbsp *rbsp)
{
 u8 *p = rbsp->data + DIV_ROUND_UP(rbsp->pos, 8);
 int i = 4;

 if (DIV_ROUND_UP(rbsp->pos, 8) + i > rbsp->size) {
  rbsp->error = -EINVAL;
  return;
 }

 p[0] = 0x00;
 p[1] = 0x00;
 p[2] = 0x00;
 p[3] = 0x01;

 rbsp->pos += i * 8;
}
