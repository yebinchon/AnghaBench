
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct byt_gpio {TYPE_1__* soc_data; } ;
struct TYPE_2__ {int uid; } ;


 int BYT_ALTER_GPIO_MUX ;
 int BYT_DEFAULT_GPIO_MUX ;
 int BYT_SCORE_ACPI_UID ;
 int BYT_SUS_ACPI_UID ;
 int strcmp (int ,int ) ;

__attribute__((used)) static u32 byt_get_gpio_mux(struct byt_gpio *vg, unsigned int offset)
{

 if (!strcmp(vg->soc_data->uid, BYT_SCORE_ACPI_UID) &&
     offset >= 92 && offset <= 93)
  return BYT_ALTER_GPIO_MUX;


 if (!strcmp(vg->soc_data->uid, BYT_SUS_ACPI_UID) &&
     offset >= 11 && offset <= 21)
  return BYT_ALTER_GPIO_MUX;

 return BYT_DEFAULT_GPIO_MUX;
}
