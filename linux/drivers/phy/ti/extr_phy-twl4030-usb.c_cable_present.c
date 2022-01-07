
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum musb_vbus_id_status { ____Placeholder_musb_vbus_id_status } musb_vbus_id_status ;


 int MUSB_ID_GROUND ;
 int MUSB_VBUS_VALID ;

__attribute__((used)) static inline bool cable_present(enum musb_vbus_id_status stat)
{
 return stat == MUSB_VBUS_VALID ||
  stat == MUSB_ID_GROUND;
}
