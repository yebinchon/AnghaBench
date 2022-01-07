
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct sym_device {TYPE_1__* pdev; } ;
typedef int Tekram_nvram ;
struct TYPE_2__ {int device; } ;






 int TEKRAM_24C16_NVRAM_ADDRESS ;
 int sym_read_S24C16_nvram (struct sym_device*,int ,int*,int) ;
 int sym_read_T93C46_nvram (struct sym_device*,int *) ;

__attribute__((used)) static int sym_read_Tekram_nvram (struct sym_device *np, Tekram_nvram *nvram)
{
 u_char *data = (u_char *) nvram;
 int len = sizeof(*nvram);
 u_short csum;
 int x;

 switch (np->pdev->device) {
 case 130:
 case 129:
 case 128:
  x = sym_read_S24C16_nvram(np, TEKRAM_24C16_NVRAM_ADDRESS,
       data, len);
  break;
 case 131:
  x = sym_read_S24C16_nvram(np, TEKRAM_24C16_NVRAM_ADDRESS,
       data, len);
  if (!x)
   break;

 default:
  x = sym_read_T93C46_nvram(np, nvram);
  break;
 }
 if (x)
  return 1;


 for (x = 0, csum = 0; x < len - 1; x += 2)
  csum += data[x] + (data[x+1] << 8);
 if (csum != 0x1234)
  return 1;

 return 0;
}
