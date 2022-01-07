
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct p80211pstrd {scalar_t__ len; int data; } ;
struct hfa384x_bytestr {int data; int len; } ;


 int cpu_to_le16 (int ) ;
 int memcpy (int ,int ,scalar_t__) ;

void prism2mgmt_pstr2bytestr(struct hfa384x_bytestr *bytestr,
        struct p80211pstrd *pstr)
{
 bytestr->len = cpu_to_le16((u16)(pstr->len));
 memcpy(bytestr->data, pstr->data, pstr->len);
}
