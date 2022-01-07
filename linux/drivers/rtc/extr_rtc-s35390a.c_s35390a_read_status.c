
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s35390a {int dummy; } ;


 int S35390A_CMD_STATUS1 ;
 char S35390A_FLAG_BLD ;
 char S35390A_FLAG_POC ;
 int msleep (int) ;
 int s35390a_get_reg (struct s35390a*,int ,char*,int) ;

__attribute__((used)) static int s35390a_read_status(struct s35390a *s35390a, char *status1)
{
 int ret;

 ret = s35390a_get_reg(s35390a, S35390A_CMD_STATUS1, status1, 1);
 if (ret < 0)
  return ret;

 if (*status1 & S35390A_FLAG_POC) {




  msleep(500);
  return 1;
 } else if (*status1 & S35390A_FLAG_BLD)
  return 1;



 return 0;
}
