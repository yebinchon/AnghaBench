
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct irb {int scsw; } ;
struct dasd_device {int dummy; } ;


 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*,int ,int ,char*,...) ;
 int DBF_EMERG ;
 scalar_t__ dasd_get_sense (struct irb*) ;

__attribute__((used)) static void
dasd_eckd_dump_sense_dbf(struct dasd_device *device, struct irb *irb,
    char *reason)
{
 u64 *sense;
 u64 *stat;

 sense = (u64 *) dasd_get_sense(irb);
 stat = (u64 *) &irb->scsw;
 if (sense) {
  DBF_DEV_EVENT(DBF_EMERG, device, "%s: %016llx %08x : "
         "%016llx %016llx %016llx %016llx",
         reason, *stat, *((u32 *) (stat + 1)),
         sense[0], sense[1], sense[2], sense[3]);
 } else {
  DBF_DEV_EVENT(DBF_EMERG, device, "%s: %016llx %08x : %s",
         reason, *stat, *((u32 *) (stat + 1)),
         "NO VALID SENSE");
 }
}
