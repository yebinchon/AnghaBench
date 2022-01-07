
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ENOMEM ;
 int READ_ONCE (int ) ;
 int atomic64_add (int,int *) ;
 int atomic64_read (int *) ;
 int atomic64_sub (int,int *) ;
 int usbfs_memory_mb ;
 int usbfs_memory_usage ;

__attribute__((used)) static int usbfs_increase_memory_usage(u64 amount)
{
 u64 lim;

 lim = READ_ONCE(usbfs_memory_mb);
 lim <<= 20;

 atomic64_add(amount, &usbfs_memory_usage);

 if (lim > 0 && atomic64_read(&usbfs_memory_usage) > lim) {
  atomic64_sub(amount, &usbfs_memory_usage);
  return -ENOMEM;
 }

 return 0;
}
