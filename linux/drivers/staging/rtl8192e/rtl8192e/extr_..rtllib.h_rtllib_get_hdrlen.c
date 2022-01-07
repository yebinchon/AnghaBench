
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int RTLLIB_1ADDR_LEN ;
 int RTLLIB_2ADDR_LEN ;
 int RTLLIB_3ADDR_LEN ;
 int RTLLIB_4ADDR_LEN ;
 int RTLLIB_FCTL_FROMDS ;
 int RTLLIB_FCTL_TODS ;


 int RTLLIB_QOS_HAS_SEQ (int) ;


 int WLAN_FC_GET_STYPE (int) ;
 int WLAN_FC_GET_TYPE (int) ;

__attribute__((used)) static inline int rtllib_get_hdrlen(u16 fc)
{
 int hdrlen = RTLLIB_3ADDR_LEN;

 switch (WLAN_FC_GET_TYPE(fc)) {
 case 130:
  if ((fc & RTLLIB_FCTL_FROMDS) && (fc & RTLLIB_FCTL_TODS))
   hdrlen = RTLLIB_4ADDR_LEN;
  if (RTLLIB_QOS_HAS_SEQ(fc))
   hdrlen += 2;
  break;
 case 131:
  switch (WLAN_FC_GET_STYPE(fc)) {
  case 128:
  case 129:
   hdrlen = RTLLIB_1ADDR_LEN;
   break;
  default:
   hdrlen = RTLLIB_2ADDR_LEN;
   break;
  }
  break;
 }

 return hdrlen;
}
