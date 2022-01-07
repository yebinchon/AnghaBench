
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_lport {int ref; } ;


 int kref_get_unless_zero (int *) ;

__attribute__((used)) static int
nvme_fc_lport_get(struct nvme_fc_lport *lport)
{
 return kref_get_unless_zero(&lport->ref);
}
