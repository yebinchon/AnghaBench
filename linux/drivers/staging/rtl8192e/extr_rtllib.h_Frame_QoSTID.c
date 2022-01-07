
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tid; } ;
union frameqos {TYPE_1__ field; } ;
typedef int u8 ;
typedef int u16 ;
struct rtllib_hdr_3addr {int frame_ctl; } ;


 int RTLLIB_FCTL_FROMDS ;
 int RTLLIB_FCTL_TODS ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u8 Frame_QoSTID(u8 *buf)
{
 struct rtllib_hdr_3addr *hdr;
 u16 fc;

 hdr = (struct rtllib_hdr_3addr *)buf;
 fc = le16_to_cpu(hdr->frame_ctl);
 return (u8)((union frameqos *)(buf + (((fc & RTLLIB_FCTL_TODS) &&
      (fc & RTLLIB_FCTL_FROMDS)) ? 30 : 24)))->field.tid;
}
