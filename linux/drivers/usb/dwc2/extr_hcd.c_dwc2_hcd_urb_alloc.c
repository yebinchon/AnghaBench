
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dummy; } ;
struct dwc2_hcd_urb {int packet_count; } ;
typedef int gfp_t ;


 int iso_descs ;
 struct dwc2_hcd_urb* kzalloc (int ,int ) ;
 int struct_size (struct dwc2_hcd_urb*,int ,int) ;

__attribute__((used)) static struct dwc2_hcd_urb *dwc2_hcd_urb_alloc(struct dwc2_hsotg *hsotg,
            int iso_desc_count,
            gfp_t mem_flags)
{
 struct dwc2_hcd_urb *urb;

 urb = kzalloc(struct_size(urb, iso_descs, iso_desc_count), mem_flags);
 if (urb)
  urb->packet_count = iso_desc_count;
 return urb;
}
