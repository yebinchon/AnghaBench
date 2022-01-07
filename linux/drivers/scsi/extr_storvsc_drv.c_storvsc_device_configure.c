
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int no_write_same; int scsi_level; int vendor; int request_queue; } ;


 int HZ ;
 int SCSI_SPC_3 ;
 int VMSTOR_PROTO_VERSION_WIN10 ;


 int blk_queue_rq_timeout (int ,int) ;
 int storvsc_timeout ;
 int strncmp (int ,char*,int) ;
 int vmstor_proto_version ;

__attribute__((used)) static int storvsc_device_configure(struct scsi_device *sdevice)
{
 blk_queue_rq_timeout(sdevice->request_queue, (storvsc_timeout * HZ));

 sdevice->no_write_same = 1;






 if (!strncmp(sdevice->vendor, "Msft", 4)) {
  switch (vmstor_proto_version) {
  case 129:
  case 128:
   sdevice->scsi_level = SCSI_SPC_3;
   break;
  }

  if (vmstor_proto_version >= VMSTOR_PROTO_VERSION_WIN10)
   sdevice->no_write_same = 0;
 }

 return 0;
}
