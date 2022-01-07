
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_relinquish_request_ie {int relinquish_req_control; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int uwb_ie_relinquish_req_reason_code(struct uwb_relinquish_request_ie *ie)
{
 return (le16_to_cpu(ie->relinquish_req_control) >> 0) & 0xf;
}
