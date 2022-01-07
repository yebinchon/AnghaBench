
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int dummy; } ;


 int CM_ASL_CAMERA ;
 scalar_t__ get_acpi (struct eeepc_laptop*,int ) ;
 int set_acpi (struct eeepc_laptop*,int ,int) ;

__attribute__((used)) static void eeepc_enable_camera(struct eeepc_laptop *eeepc)
{




 if (get_acpi(eeepc, CM_ASL_CAMERA) == 0)
  set_acpi(eeepc, CM_ASL_CAMERA, 1);
}
