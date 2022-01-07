
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_6__ {int iu_length; int iu_type; } ;
struct TYPE_4__ {int last_section; int first_section; } ;
struct TYPE_5__ {TYPE_1__ config_table_update; } ;
struct pqi_vendor_general_request {TYPE_3__ header; TYPE_2__ data; int function_code; } ;
struct pqi_ctrl_info {int dummy; } ;
typedef int request ;


 int NO_TIMEOUT ;
 scalar_t__ PQI_REQUEST_HEADER_LENGTH ;
 int PQI_REQUEST_IU_VENDOR_GENERAL ;
 scalar_t__ PQI_VENDOR_GENERAL_CONFIG_TABLE_UPDATE ;
 int memset (struct pqi_vendor_general_request*,int ,int) ;
 int pqi_submit_raid_request_synchronous (struct pqi_ctrl_info*,TYPE_3__*,int ,int *,int ) ;
 int put_unaligned_le16 (scalar_t__,int *) ;

__attribute__((used)) static int pqi_config_table_update(struct pqi_ctrl_info *ctrl_info,
 u16 first_section, u16 last_section)
{
 struct pqi_vendor_general_request request;

 memset(&request, 0, sizeof(request));

 request.header.iu_type = PQI_REQUEST_IU_VENDOR_GENERAL;
 put_unaligned_le16(sizeof(request) - PQI_REQUEST_HEADER_LENGTH,
  &request.header.iu_length);
 put_unaligned_le16(PQI_VENDOR_GENERAL_CONFIG_TABLE_UPDATE,
  &request.function_code);
 put_unaligned_le16(first_section,
  &request.data.config_table_update.first_section);
 put_unaligned_le16(last_section,
  &request.data.config_table_update.last_section);

 return pqi_submit_raid_request_synchronous(ctrl_info, &request.header,
  0, ((void*)0), NO_TIMEOUT);
}
