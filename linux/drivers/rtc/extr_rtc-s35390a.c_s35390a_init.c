
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s35390a {int dummy; } ;


 int EIO ;
 int S35390A_CMD_STATUS1 ;
 int S35390A_FLAG_24H ;
 int S35390A_FLAG_BLD ;
 int S35390A_FLAG_POC ;
 int S35390A_FLAG_RESET ;
 int s35390a_get_reg (struct s35390a*,int ,int*,int) ;
 int s35390a_set_reg (struct s35390a*,int ,int*,int) ;

__attribute__((used)) static int s35390a_init(struct s35390a *s35390a)
{
 u8 buf;
 int ret;
 unsigned initcount = 0;
initialize:
 buf = S35390A_FLAG_RESET | S35390A_FLAG_24H;
 ret = s35390a_set_reg(s35390a, S35390A_CMD_STATUS1, &buf, 1);

 if (ret < 0)
  return ret;

 ret = s35390a_get_reg(s35390a, S35390A_CMD_STATUS1, &buf, 1);
 if (ret < 0)
  return ret;

 if (buf & (S35390A_FLAG_POC | S35390A_FLAG_BLD)) {

  if (initcount < 5) {
   ++initcount;
   goto initialize;
  } else
   return -EIO;
 }

 return 1;
}
