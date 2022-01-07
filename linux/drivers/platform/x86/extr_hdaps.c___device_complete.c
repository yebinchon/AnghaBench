
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __device_refresh () ;
 int inb (int) ;

__attribute__((used)) static inline void __device_complete(void)
{
 inb(0x161f);
 inb(0x1604);
 __device_refresh();
}
