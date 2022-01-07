
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int dsr; } ;
struct TYPE_4__ {scalar_t__ line; TYPE_1__ icount; } ;
struct dz_port {TYPE_2__ port; } ;


 scalar_t__ DZ_MODEM ;
 int DZ_MSR ;
 scalar_t__ dz_in (struct dz_port*,int ) ;

__attribute__((used)) static inline void check_modem_status(struct dz_port *dport)
{





 u16 status;


 if (dport->port.line != DZ_MODEM)
  return;

 status = dz_in(dport, DZ_MSR);


 if (status)
  dport->port.icount.dsr++;
}
