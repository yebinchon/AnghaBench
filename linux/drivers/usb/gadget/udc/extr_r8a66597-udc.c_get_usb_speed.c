
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8a66597 {int dummy; } ;


 int DVSTCTR0 ;
 int RHST ;
 int r8a66597_read (struct r8a66597*,int ) ;

__attribute__((used)) static inline u16 get_usb_speed(struct r8a66597 *r8a66597)
{
 return r8a66597_read(r8a66597, DVSTCTR0) & RHST;
}
