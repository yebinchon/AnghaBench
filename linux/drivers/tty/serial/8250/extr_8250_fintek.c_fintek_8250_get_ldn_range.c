
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fintek_8250 {int pid; } ;







 int ENODEV ;
 int F81216_LDN_HIGH ;
 int F81216_LDN_LOW ;
 int F81866_LDN_HIGH ;
 int F81866_LDN_LOW ;

__attribute__((used)) static int fintek_8250_get_ldn_range(struct fintek_8250 *pdata, int *min,
         int *max)
{
 switch (pdata->pid) {
 case 129:
 case 128:
  *min = F81866_LDN_LOW;
  *max = F81866_LDN_HIGH;
  return 0;

 case 131:
 case 130:
 case 132:
  *min = F81216_LDN_LOW;
  *max = F81216_LDN_HIGH;
  return 0;
 }

 return -ENODEV;
}
