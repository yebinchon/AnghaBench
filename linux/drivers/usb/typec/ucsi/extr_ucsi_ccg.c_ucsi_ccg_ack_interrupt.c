
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_ccg {int dummy; } ;
typedef int data ;


 int CCGX_RAB_INTR_REG ;
 int ccg_read (struct ucsi_ccg*,int ,unsigned char*,int) ;
 int ccg_write (struct ucsi_ccg*,int ,unsigned char*,int) ;

__attribute__((used)) static int ucsi_ccg_ack_interrupt(struct ucsi_ccg *uc)
{
 int status;
 unsigned char data;

 status = ccg_read(uc, CCGX_RAB_INTR_REG, &data, sizeof(data));
 if (status < 0)
  return status;

 return ccg_write(uc, CCGX_RAB_INTR_REG, &data, sizeof(data));
}
