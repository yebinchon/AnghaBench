
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ucsi_ccg {int dummy; } ;
typedef int data ;


 int CCGX_RAB_INTR_REG ;
 int CCGX_RAB_UCSI_CONTROL ;
 int CCGX_RAB_UCSI_CONTROL_START ;
 int CCGX_RAB_UCSI_CONTROL_STOP ;
 int ETIMEDOUT ;
 int ccg_read (struct ucsi_ccg*,int ,int *,int) ;
 int ccg_write (struct ucsi_ccg*,int ,int *,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ucsi_ccg_init(struct ucsi_ccg *uc)
{
 unsigned int count = 10;
 u8 data;
 int status;

 data = CCGX_RAB_UCSI_CONTROL_STOP;
 status = ccg_write(uc, CCGX_RAB_UCSI_CONTROL, &data, sizeof(data));
 if (status < 0)
  return status;

 data = CCGX_RAB_UCSI_CONTROL_START;
 status = ccg_write(uc, CCGX_RAB_UCSI_CONTROL, &data, sizeof(data));
 if (status < 0)
  return status;





 do {
  status = ccg_read(uc, CCGX_RAB_INTR_REG, &data, sizeof(data));
  if (status < 0)
   return status;

  if (!data)
   return 0;

  status = ccg_write(uc, CCGX_RAB_INTR_REG, &data, sizeof(data));
  if (status < 0)
   return status;

  usleep_range(10000, 11000);
 } while (--count);

 return -ETIMEDOUT;
}
