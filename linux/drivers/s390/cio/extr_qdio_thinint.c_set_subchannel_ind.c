
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int summary_indicator_addr ;
typedef int subchannel_indicator_addr ;
struct TYPE_6__ {int sch_no; } ;
struct qdio_irq {TYPE_3__ schid; int dsci; scalar_t__ chsc_page; } ;
struct TYPE_4__ {int code; } ;
struct chsc_scssc_area {TYPE_1__ response; } ;
struct TYPE_5__ {int lsi_ptr; } ;


 int DBF_ERROR (char*,int ,int ) ;
 int DBF_EVENT (char*) ;
 int DBF_HEX (scalar_t__*,int) ;
 int chsc_sadc (TYPE_3__,struct chsc_scssc_area*,scalar_t__,scalar_t__) ;
 TYPE_2__ tiqdio_airq ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static int set_subchannel_ind(struct qdio_irq *irq_ptr, int reset)
{
 struct chsc_scssc_area *scssc = (void *)irq_ptr->chsc_page;
 u64 summary_indicator_addr, subchannel_indicator_addr;
 int rc;

 if (reset) {
  summary_indicator_addr = 0;
  subchannel_indicator_addr = 0;
 } else {
  summary_indicator_addr = virt_to_phys(tiqdio_airq.lsi_ptr);
  subchannel_indicator_addr = virt_to_phys(irq_ptr->dsci);
 }

 rc = chsc_sadc(irq_ptr->schid, scssc, summary_indicator_addr,
         subchannel_indicator_addr);
 if (rc) {
  DBF_ERROR("%4x SSI r:%4x", irq_ptr->schid.sch_no,
     scssc->response.code);
  goto out;
 }

 DBF_EVENT("setscind");
 DBF_HEX(&summary_indicator_addr, sizeof(summary_indicator_addr));
 DBF_HEX(&subchannel_indicator_addr, sizeof(subchannel_indicator_addr));
out:
 return rc;
}
