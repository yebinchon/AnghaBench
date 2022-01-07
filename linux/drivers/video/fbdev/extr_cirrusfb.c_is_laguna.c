
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cirrusfb_info {scalar_t__ btype; } ;


 scalar_t__ BT_LAGUNA ;
 scalar_t__ BT_LAGUNAB ;

__attribute__((used)) static inline int is_laguna(const struct cirrusfb_info *cinfo)
{
 return cinfo->btype == BT_LAGUNA || cinfo->btype == BT_LAGUNAB;
}
