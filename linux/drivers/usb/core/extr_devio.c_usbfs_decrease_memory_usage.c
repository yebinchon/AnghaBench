
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int atomic64_sub (int ,int *) ;
 int usbfs_memory_usage ;

__attribute__((used)) static void usbfs_decrease_memory_usage(u64 amount)
{
 atomic64_sub(amount, &usbfs_memory_usage);
}
