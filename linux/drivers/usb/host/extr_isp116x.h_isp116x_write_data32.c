
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp116x {int data_reg; } ;


 int isp116x_delay (struct isp116x*,int) ;
 int writew (int,int ) ;

__attribute__((used)) static inline void isp116x_write_data32(struct isp116x *isp116x, u32 val)
{
 writew(val & 0xffff, isp116x->data_reg);
 isp116x_delay(isp116x, 150);
 writew(val >> 16, isp116x->data_reg);
 isp116x_delay(isp116x, 150);
}
