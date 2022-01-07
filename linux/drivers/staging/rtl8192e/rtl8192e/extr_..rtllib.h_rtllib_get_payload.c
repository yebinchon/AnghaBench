
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtllib_hdr_4addr {int * payload; } ;
struct rtllib_hdr_3addr {int * payload; } ;
struct rtllib_hdr_2addr {int * payload; } ;
struct rtllib_hdr_1addr {int * payload; } ;
struct rtllib_hdr {int frame_ctl; } ;






 int le16_to_cpu (int ) ;
 int rtllib_get_hdrlen (int ) ;

__attribute__((used)) static inline u8 *rtllib_get_payload(struct rtllib_hdr *hdr)
{
 switch (rtllib_get_hdrlen(le16_to_cpu(hdr->frame_ctl))) {
 case 131:
  return ((struct rtllib_hdr_1addr *)hdr)->payload;
 case 130:
  return ((struct rtllib_hdr_2addr *)hdr)->payload;
 case 129:
  return ((struct rtllib_hdr_3addr *)hdr)->payload;
 case 128:
  return ((struct rtllib_hdr_4addr *)hdr)->payload;
 }
 return ((void*)0);
}
