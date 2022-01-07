
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_h264_dpb_entry {scalar_t__ top_field_order_cnt; scalar_t__ bottom_field_order_cnt; } ;



__attribute__((used)) static bool dpb_entry_match(const struct v4l2_h264_dpb_entry *a,
       const struct v4l2_h264_dpb_entry *b)
{
 return a->top_field_order_cnt == b->top_field_order_cnt &&
        a->bottom_field_order_cnt == b->bottom_field_order_cnt;
}
