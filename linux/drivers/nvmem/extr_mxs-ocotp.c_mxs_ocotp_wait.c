
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_ocotp {int base; } ;


 unsigned int BM_OCOTP_CTRL_BUSY ;
 unsigned int BM_OCOTP_CTRL_ERROR ;
 int EBUSY ;
 int EIO ;
 int OCOTP_TIMEOUT ;
 int cpu_relax () ;
 unsigned int readl (int ) ;

__attribute__((used)) static int mxs_ocotp_wait(struct mxs_ocotp *otp)
{
 int timeout = OCOTP_TIMEOUT;
 unsigned int status = 0;

 while (timeout--) {
  status = readl(otp->base);

  if (!(status & (BM_OCOTP_CTRL_BUSY | BM_OCOTP_CTRL_ERROR)))
   break;

  cpu_relax();
 }

 if (status & BM_OCOTP_CTRL_BUSY)
  return -EBUSY;
 else if (status & BM_OCOTP_CTRL_ERROR)
  return -EIO;

 return 0;
}
