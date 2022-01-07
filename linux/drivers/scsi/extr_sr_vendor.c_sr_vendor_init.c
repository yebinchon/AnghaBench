
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mask; } ;
struct TYPE_7__ {void* vendor; TYPE_2__ cdi; TYPE_1__* device; scalar_t__ readcd_known; } ;
struct TYPE_5__ {char* vendor; char* model; scalar_t__ type; } ;
typedef TYPE_3__ Scsi_CD ;


 int CDC_MULTI_SESSION ;
 scalar_t__ TYPE_WORM ;
 void* VENDOR_NEC ;
 void* VENDOR_SCSI3 ;
 void* VENDOR_TOSHIBA ;
 void* VENDOR_WRITER ;
 int strncmp (char const*,char*,int) ;

void sr_vendor_init(Scsi_CD *cd)
{

 cd->vendor = VENDOR_SCSI3;
}
