
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_bus_flash_conn {int dev; } ;


 int device_unregister (int *) ;

__attribute__((used)) static int iscsi_destroy_flashnode_conn(struct iscsi_bus_flash_conn *fnode_conn)
{
 device_unregister(&fnode_conn->dev);
 return 0;
}
