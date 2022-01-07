
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__* hostdata; } ;
struct NCR_700_Host_Parameters {scalar_t__ fast; scalar_t__ chip710; } ;
typedef int __u8 ;


 int CTEST0_REG ;
 int DBC_REG ;
 int DFIFO_REG ;
 int NCR_700_readb (struct Scsi_Host*,int ) ;
 int NCR_700_readl (struct Scsi_Host*,int ) ;
 int SIDL_REG_FULL ;
 int SODL_REG_FULL ;
 int SODR_REG_FULL ;
 int SSTAT1_REG ;
 int SSTAT2_REG ;
 int SXFER_REG ;
 int printk (char*,int,unsigned int) ;

__attribute__((used)) static inline int
NCR_700_data_residual (struct Scsi_Host *host) {
 struct NCR_700_Host_Parameters *hostdata =
  (struct NCR_700_Host_Parameters *)host->hostdata[0];
 int count, synchronous = 0;
 unsigned int ddir;

 if(hostdata->chip710) {
  count = ((NCR_700_readb(host, DFIFO_REG) & 0x7f) -
    (NCR_700_readl(host, DBC_REG) & 0x7f)) & 0x7f;
 } else {
  count = ((NCR_700_readb(host, DFIFO_REG) & 0x3f) -
    (NCR_700_readl(host, DBC_REG) & 0x3f)) & 0x3f;
 }

 if(hostdata->fast)
  synchronous = NCR_700_readb(host, SXFER_REG) & 0x0f;


 ddir = NCR_700_readb(host, CTEST0_REG) & 0x01;

 if (ddir) {

  if (synchronous)
   count += (NCR_700_readb(host, SSTAT2_REG) & 0xf0) >> 4;
  else
   if (NCR_700_readb(host, SSTAT1_REG) & SIDL_REG_FULL)
    ++count;
 } else {

  __u8 sstat = NCR_700_readb(host, SSTAT1_REG);
  if (sstat & SODL_REG_FULL)
   ++count;
  if (synchronous && (sstat & SODR_REG_FULL))
   ++count;
 }




 return count;
}
