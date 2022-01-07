
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct sym_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; int byte_count; int checksum; int trailer; } ;
typedef TYPE_1__ Symbios_nvram ;


 int SYMBIOS_NVRAM_ADDRESS ;
 scalar_t__ memcmp (int ,int*,int) ;
 scalar_t__ sym_read_S24C16_nvram (struct sym_device*,int ,int*,int) ;

__attribute__((used)) static int sym_read_Symbios_nvram(struct sym_device *np, Symbios_nvram *nvram)
{
 static u_char Symbios_trailer[6] = {0xfe, 0xfe, 0, 0, 0, 0};
 u_char *data = (u_char *) nvram;
 int len = sizeof(*nvram);
 u_short csum;
 int x;


 if (sym_read_S24C16_nvram (np, SYMBIOS_NVRAM_ADDRESS, data, len))
  return 1;


 if (nvram->type != 0 ||
     memcmp(nvram->trailer, Symbios_trailer, 6) ||
     nvram->byte_count != len - 12)
  return 1;


 for (x = 6, csum = 0; x < len - 6; x++)
  csum += data[x];
 if (csum != nvram->checksum)
  return 1;

 return 0;
}
