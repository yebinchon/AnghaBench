
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hvcs_struct {scalar_t__ connected; TYPE_1__* vdev; } ;
struct TYPE_2__ {int unit_address; } ;


 int EBUSY ;
 int hvcs_free_connection (int ) ;

__attribute__((used)) static void hvcs_partner_free(struct hvcs_struct *hvcsd)
{
 int retval;
 do {
  retval = hvcs_free_connection(hvcsd->vdev->unit_address);
 } while (retval == -EBUSY);
 hvcsd->connected = 0;
}
