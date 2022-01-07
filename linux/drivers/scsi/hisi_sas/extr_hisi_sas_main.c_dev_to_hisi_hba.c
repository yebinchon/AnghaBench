
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hisi_hba {int dummy; } ;
struct domain_device {TYPE_2__* port; } ;
struct TYPE_4__ {TYPE_1__* ha; } ;
struct TYPE_3__ {struct hisi_hba* lldd_ha; } ;



__attribute__((used)) static struct hisi_hba *dev_to_hisi_hba(struct domain_device *device)
{
 return device->port->ha->lldd_ha;
}
