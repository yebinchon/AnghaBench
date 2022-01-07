
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATE_FRESH ;
 int __device_refresh () ;
 int __wait_latch (int,int ) ;

__attribute__((used)) static int __device_refresh_sync(void)
{
 __device_refresh();
 return __wait_latch(0x1604, STATE_FRESH);
}
