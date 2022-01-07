
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int __device_complete () ;
 int __device_refresh_sync () ;
 int hdaps_mtx ;
 int inb (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdaps_readb_one(unsigned int port, u8 *val)
{
 int ret;

 mutex_lock(&hdaps_mtx);


 ret = __device_refresh_sync();
 if (ret)
  goto out;

 *val = inb(port);
 __device_complete();

out:
 mutex_unlock(&hdaps_mtx);
 return ret;
}
