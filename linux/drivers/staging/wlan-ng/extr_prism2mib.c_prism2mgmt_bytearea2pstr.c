
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct p80211pstrd {int data; scalar_t__ len; } ;


 int memcpy (int ,scalar_t__*,int) ;

void prism2mgmt_bytearea2pstr(u8 *bytearea, struct p80211pstrd *pstr, int len)
{
 pstr->len = (u8)len;
 memcpy(pstr->data, bytearea, len);
}
