
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; scalar_t__* sense_buffer; } ;
struct atp_unit {unsigned int* active_id; size_t* quend; size_t* quhd; scalar_t__* in_int; scalar_t__* in_snd; int * ioport; struct scsi_cmnd*** quereq; } ;
struct Scsi_Host {int hostdata; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 scalar_t__ atp_readb_io (struct atp_unit*,unsigned char,int) ;
 int printk (char*,...) ;
 size_t qcnt ;
 int scmd_channel (struct scsi_cmnd*) ;
 unsigned int scmd_id (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int send_s870 (struct atp_unit*,unsigned char) ;

__attribute__((used)) static int atp870u_queuecommand_lck(struct scsi_cmnd *req_p,
    void (*done) (struct scsi_cmnd *))
{
 unsigned char c;
 unsigned int m;
 struct atp_unit *dev;
 struct Scsi_Host *host;

 c = scmd_channel(req_p);
 req_p->sense_buffer[0]=0;
 scsi_set_resid(req_p, 0);
 if (scmd_channel(req_p) > 1) {
  req_p->result = 0x00040000;
  done(req_p);



  return 0;
 }

 host = req_p->device->host;
 dev = (struct atp_unit *)&host->hostdata;



 m = 1;
 m = m << scmd_id(req_p);





 if ((m & dev->active_id[c]) == 0) {
  req_p->result = 0x00040000;
  done(req_p);
  return 0;
 }

 if (done) {
  req_p->scsi_done = done;
 } else {



  req_p->result = 0;
  done(req_p);
  return 0;
 }




 dev->quend[c]++;
 if (dev->quend[c] >= qcnt) {
  dev->quend[c] = 0;
 }




 if (dev->quhd[c] == dev->quend[c]) {
  if (dev->quend[c] == 0) {
   dev->quend[c] = qcnt;
  }



  dev->quend[c]--;
  req_p->result = 0x00020000;
  done(req_p);
  return 0;
 }
 dev->quereq[c][dev->quend[c]] = req_p;



 if ((atp_readb_io(dev, c, 0x1c) == 0) && (dev->in_int[c] == 0) && (dev->in_snd[c] == 0)) {



  send_s870(dev,c);
 }



 return 0;
}
