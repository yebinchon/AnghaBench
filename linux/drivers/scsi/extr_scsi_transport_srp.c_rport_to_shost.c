
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct srp_rport {TYPE_1__ dev; } ;
struct Scsi_Host {int dummy; } ;


 struct Scsi_Host* dev_to_shost (int ) ;

__attribute__((used)) static inline struct Scsi_Host *rport_to_shost(struct srp_rport *r)
{
 return dev_to_shost(r->dev.parent);
}
