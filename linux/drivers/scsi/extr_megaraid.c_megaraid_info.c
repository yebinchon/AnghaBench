
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_4__ {int max_commands; } ;
struct TYPE_6__ {char* fw_version; TYPE_2__* host; TYPE_1__ product_info; } ;
typedef TYPE_3__ adapter_t ;
struct TYPE_5__ {int max_id; int max_channel; scalar_t__ max_lun; } ;


 int sprintf (char*,char*,char*,int,int,int,int) ;

const char *
megaraid_info(struct Scsi_Host *host)
{
 static char buffer[512];
 adapter_t *adapter;

 adapter = (adapter_t *)host->hostdata;

 sprintf (buffer,
   "LSI Logic MegaRAID %s %d commands %d targs %d chans %d luns",
   adapter->fw_version, adapter->product_info.max_commands,
   adapter->host->max_id, adapter->host->max_channel,
   (u32)adapter->host->max_lun);
 return buffer;
}
