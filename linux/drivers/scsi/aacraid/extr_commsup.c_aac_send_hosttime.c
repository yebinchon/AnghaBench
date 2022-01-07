
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_sec; } ;
struct fib {int dummy; } ;
struct aac_dev {int dummy; } ;
typedef int __le32 ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int FsaNormal ;
 int SendHostTime ;
 struct fib* aac_fib_alloc (struct aac_dev*) ;
 int aac_fib_complete (struct fib*) ;
 int aac_fib_free (struct fib*) ;
 int aac_fib_init (struct fib*) ;
 int aac_fib_send (int ,struct fib*,int,int ,int,int,int *,int *) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ fib_data (struct fib*) ;

int aac_send_hosttime(struct aac_dev *dev, struct timespec64 *now)
{
 int ret = -ENOMEM;
 struct fib *fibptr;
 __le32 *info;

 fibptr = aac_fib_alloc(dev);
 if (!fibptr)
  goto out;

 aac_fib_init(fibptr);
 info = (__le32 *)fib_data(fibptr);
 *info = cpu_to_le32(now->tv_sec);
 ret = aac_fib_send(SendHostTime, fibptr, sizeof(*info), FsaNormal,
     1, 1, ((void*)0), ((void*)0));





 if (ret >= 0)
  aac_fib_complete(fibptr);





 if (ret != -ERESTARTSYS)
  aac_fib_free(fibptr);

out:
 return ret;
}
