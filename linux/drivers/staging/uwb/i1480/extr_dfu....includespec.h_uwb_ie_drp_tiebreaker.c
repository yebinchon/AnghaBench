
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_ie_drp {int drp_control; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int uwb_ie_drp_tiebreaker(struct uwb_ie_drp *ie)
{
 return (le16_to_cpu(ie->drp_control) >> 11) & 0x1;
}
