
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct wilc_conn_info {scalar_t__ resp_ies_len; int resp_ies; int status; } ;
struct assoc_resp {int status_code; } ;
typedef int s32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WLAN_STATUS_SUCCESS ;
 int kmemdup (int *,scalar_t__,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
          struct wilc_conn_info *ret_conn_info)
{
 u8 *ies;
 u16 ies_len;
 struct assoc_resp *res = (struct assoc_resp *)buffer;

 ret_conn_info->status = le16_to_cpu(res->status_code);
 if (ret_conn_info->status == WLAN_STATUS_SUCCESS) {
  ies = &buffer[sizeof(*res)];
  ies_len = buffer_len - sizeof(*res);

  ret_conn_info->resp_ies = kmemdup(ies, ies_len, GFP_KERNEL);
  if (!ret_conn_info->resp_ies)
   return -ENOMEM;

  ret_conn_info->resp_ies_len = ies_len;
 }

 return 0;
}
