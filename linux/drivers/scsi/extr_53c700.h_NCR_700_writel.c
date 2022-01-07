
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__* hostdata; } ;
struct NCR_700_Host_Parameters {int base; } ;
typedef int __u32 ;


 int BUG_ON (int) ;
 scalar_t__ bEBus ;
 int iowrite32 (int,int) ;
 int iowrite32be (int,int) ;

__attribute__((used)) static inline void
NCR_700_writel(__u32 value, struct Scsi_Host *host, __u32 reg)
{
 const struct NCR_700_Host_Parameters *hostdata
  = (struct NCR_700_Host_Parameters *)host->hostdata[0];



 BUG_ON((reg & 0x3) != 0);


 bEBus ? iowrite32be(value, hostdata->base + reg):
  iowrite32(value, hostdata->base + reg);
}
