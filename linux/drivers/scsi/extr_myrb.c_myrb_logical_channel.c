
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int max_channel; } ;



__attribute__((used)) static inline int myrb_logical_channel(struct Scsi_Host *shost)
{
 return shost->max_channel - 1;
}
