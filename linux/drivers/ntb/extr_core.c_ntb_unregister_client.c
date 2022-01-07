
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_client {int drv; } ;


 int driver_unregister (int *) ;

void ntb_unregister_client(struct ntb_client *client)
{
 driver_unregister(&client->drv);
}
