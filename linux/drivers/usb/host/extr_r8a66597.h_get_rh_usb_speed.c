
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8a66597 {int dummy; } ;


 int RHST ;
 unsigned long get_dvstctr_reg (int) ;
 int r8a66597_read (struct r8a66597*,unsigned long) ;

__attribute__((used)) static inline u16 get_rh_usb_speed(struct r8a66597 *r8a66597, int port)
{
 unsigned long dvstctr_reg = get_dvstctr_reg(port);

 return r8a66597_read(r8a66597, dvstctr_reg) & RHST;
}
