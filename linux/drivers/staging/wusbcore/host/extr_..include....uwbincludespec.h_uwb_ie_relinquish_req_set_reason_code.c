
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uwb_relinquish_request_ie {int relinquish_req_control; } ;


 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline void uwb_ie_relinquish_req_set_reason_code(struct uwb_relinquish_request_ie *ie,
        int reason_code)
{
 u16 ctrl = le16_to_cpu(ie->relinquish_req_control);
 ctrl = (ctrl & ~(0xf << 0)) | (reason_code << 0);
 ie->relinquish_req_control = cpu_to_le16(ctrl);
}
