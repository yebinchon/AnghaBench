
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int USB_PID_DATA0 ;

__attribute__((used)) static inline u32 dbgp_pid_read_update(u32 x, u32 tok)
{
 return (x & 0xffff0000) | (USB_PID_DATA0 << 8) | (tok & 0xff);
}
