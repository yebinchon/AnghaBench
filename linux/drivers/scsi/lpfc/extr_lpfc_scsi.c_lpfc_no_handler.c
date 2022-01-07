
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int FAILED ;

__attribute__((used)) static int
lpfc_no_handler(struct scsi_cmnd *cmnd)
{
 return FAILED;
}
