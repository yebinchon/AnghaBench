
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct acer_data {int dummy; } ;
struct TYPE_2__ {struct acer_data data; } ;


 int ACER_CAP_MAILLED ;
 int LED_OFF ;
 scalar_t__ has_cap (int ) ;
 TYPE_1__* interface ;
 int set_u32 (int ,int ) ;

__attribute__((used)) static void acer_platform_shutdown(struct platform_device *device)
{
 struct acer_data *data = &interface->data;

 if (!data)
  return;

 if (has_cap(ACER_CAP_MAILLED))
  set_u32(LED_OFF, ACER_CAP_MAILLED);
}
