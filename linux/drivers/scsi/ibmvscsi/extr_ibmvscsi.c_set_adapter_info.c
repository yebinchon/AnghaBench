
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* os_type; void* mad_version; void* partition_number; int partition_name; int srp_version; } ;
struct ibmvscsi_host_data {TYPE_1__ madapter_info; int dev; } ;


 int SRP_MAD_OS_LINUX ;
 int SRP_MAD_VERSION_1 ;
 int SRP_VERSION ;
 void* cpu_to_be32 (int ) ;
 int dev_info (int ,char*,int ) ;
 int memset (TYPE_1__*,int,int) ;
 int partition_name ;
 int partition_number ;
 int strcpy (int ,int ) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static void set_adapter_info(struct ibmvscsi_host_data *hostdata)
{
 memset(&hostdata->madapter_info, 0x00,
   sizeof(hostdata->madapter_info));

 dev_info(hostdata->dev, "SRP_VERSION: %s\n", SRP_VERSION);
 strcpy(hostdata->madapter_info.srp_version, SRP_VERSION);

 strncpy(hostdata->madapter_info.partition_name, partition_name,
   sizeof(hostdata->madapter_info.partition_name));

 hostdata->madapter_info.partition_number =
     cpu_to_be32(partition_number);

 hostdata->madapter_info.mad_version = cpu_to_be32(SRP_MAD_VERSION_1);
 hostdata->madapter_info.os_type = cpu_to_be32(SRP_MAD_OS_LINUX);
}
