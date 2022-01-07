
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cxgbit_wr_wait {int ret; int completion; } ;


 scalar_t__ CPL_ERR_NONE ;
 int EIO ;
 int complete (int *) ;
 int pr_err (char*,char const*,scalar_t__) ;

__attribute__((used)) static void
cxgbit_wake_up(struct cxgbit_wr_wait *wr_waitp, const char *func, u8 ret)
{
 if (ret == CPL_ERR_NONE)
  wr_waitp->ret = 0;
 else
  wr_waitp->ret = -EIO;

 if (wr_waitp->ret)
  pr_err("%s: err:%u", func, ret);

 complete(&wr_waitp->completion);
}
