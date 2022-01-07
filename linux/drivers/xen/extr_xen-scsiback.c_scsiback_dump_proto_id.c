
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsiback_tport {int tport_proto_id; } ;






__attribute__((used)) static char *scsiback_dump_proto_id(struct scsiback_tport *tport)
{
 switch (tport->tport_proto_id) {
 case 128:
  return "SAS";
 case 130:
  return "FCP";
 case 129:
  return "iSCSI";
 default:
  break;
 }

 return "Unknown";
}
