
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qlink_hidden_ssid { ____Placeholder_qlink_hidden_ssid } qlink_hidden_ssid ;
typedef enum nl80211_hidden_ssid { ____Placeholder_nl80211_hidden_ssid } nl80211_hidden_ssid ;





 int QLINK_HIDDEN_SSID_NOT_IN_USE ;
 int QLINK_HIDDEN_SSID_ZERO_CONTENTS ;
 int QLINK_HIDDEN_SSID_ZERO_LEN ;

enum qlink_hidden_ssid qlink_hidden_ssid_nl2q(enum nl80211_hidden_ssid nl_val)
{
 switch (nl_val) {
 case 128:
  return QLINK_HIDDEN_SSID_ZERO_LEN;
 case 129:
  return QLINK_HIDDEN_SSID_ZERO_CONTENTS;
 case 130:
 default:
  return QLINK_HIDDEN_SSID_NOT_IN_USE;
 }
}
