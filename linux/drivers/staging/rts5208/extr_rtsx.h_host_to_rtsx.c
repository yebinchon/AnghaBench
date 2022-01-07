
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;



__attribute__((used)) static inline struct rtsx_dev *host_to_rtsx(struct Scsi_Host *host)
{
 return (struct rtsx_dev *)host->hostdata;
}
