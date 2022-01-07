
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_xfer {int segs_done; } ;
struct wa_seg {int status; } ;
typedef enum wa_seg_status { ____Placeholder_wa_seg_status } wa_seg_status ;


 int __wa_xfer_is_done (struct wa_xfer*) ;

__attribute__((used)) static unsigned __wa_xfer_mark_seg_as_done(struct wa_xfer *xfer,
 struct wa_seg *seg, enum wa_seg_status status)
{
 seg->status = status;
 xfer->segs_done++;


 return __wa_xfer_is_done(xfer);
}
