
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int supported; int enabled; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* pqi_firmware_features ;

__attribute__((used)) static void pqi_init_firmware_features(void)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(pqi_firmware_features); i++) {
  pqi_firmware_features[i].supported = 0;
  pqi_firmware_features[i].enabled = 0;
 }
}
