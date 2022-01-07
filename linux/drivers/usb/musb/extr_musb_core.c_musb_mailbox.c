
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum musb_vbus_id_status { ____Placeholder_musb_vbus_id_status } musb_vbus_id_status ;


 int ENODEV ;
 int musb_phy_callback (int) ;

int musb_mailbox(enum musb_vbus_id_status status)
{
 if (musb_phy_callback)
  return musb_phy_callback(status);

 return -ENODEV;
}
