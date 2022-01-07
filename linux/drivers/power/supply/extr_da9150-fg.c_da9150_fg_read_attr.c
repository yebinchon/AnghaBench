
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct da9150_fg {int da9150; } ;


 int DA9150_QIF_BYTE_SIZE ;
 int DA9150_QIF_CODE_MASK ;
 int DA9150_QIF_LONG_SIZE ;
 int DA9150_QIF_READ ;
 int da9150_read_qif (int ,int,int,int*) ;

__attribute__((used)) static u32 da9150_fg_read_attr(struct da9150_fg *fg, u8 code, u8 size)

{
 u8 buf[DA9150_QIF_LONG_SIZE];
 u8 read_addr;
 u32 res = 0;
 int i;


 read_addr = (code & DA9150_QIF_CODE_MASK) | DA9150_QIF_READ;

 da9150_read_qif(fg->da9150, read_addr, size, buf);
 for (i = 0; i < size; ++i)
  res |= (buf[i] << (i * DA9150_QIF_BYTE_SIZE));

 return res;
}
