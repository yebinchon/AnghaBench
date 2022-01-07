
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rbsp {int pos; int size; int * data; } ;


 int DIV_ROUND_UP (int,int) ;
 int memset (int *,int,int) ;

__attribute__((used)) static void nal_h264_write_filler_data(struct rbsp *rbsp)
{
 u8 *p = rbsp->data + DIV_ROUND_UP(rbsp->pos, 8);
 int i;


 i = rbsp->size - DIV_ROUND_UP(rbsp->pos, 8) - 1;
 memset(p, 0xff, i);
 rbsp->pos += i * 8;
}
