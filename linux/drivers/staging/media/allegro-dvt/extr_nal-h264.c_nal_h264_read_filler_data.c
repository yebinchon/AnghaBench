
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rbsp {int* data; int pos; scalar_t__ size; int error; } ;


 scalar_t__ DIV_ROUND_UP (int,int) ;
 int EINVAL ;

__attribute__((used)) static void nal_h264_read_filler_data(struct rbsp *rbsp)
{
 u8 *p = rbsp->data + DIV_ROUND_UP(rbsp->pos, 8);

 while (*p == 0xff) {
  if (DIV_ROUND_UP(rbsp->pos, 8) > rbsp->size) {
   rbsp->error = -EINVAL;
   return;
  }

  p++;
  rbsp->pos += 8;
 }
}
