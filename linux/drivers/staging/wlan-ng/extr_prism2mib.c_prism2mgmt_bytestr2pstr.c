
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct p80211pstrd {scalar_t__ len; int data; } ;
struct hfa384x_bytestr {int data; int len; } ;


 scalar_t__ le16_to_cpu (int ) ;
 int memcpy (int ,int ,scalar_t__) ;

void prism2mgmt_bytestr2pstr(struct hfa384x_bytestr *bytestr,
        struct p80211pstrd *pstr)
{
 pstr->len = (u8)(le16_to_cpu(bytestr->len));
 memcpy(pstr->data, bytestr->data, pstr->len);
}
