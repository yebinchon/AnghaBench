
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vbg_session {int dummy; } ;
struct vbg_dev {int pending_events; } ;



__attribute__((used)) static u32 vbg_consume_events_locked(struct vbg_dev *gdev,
         struct vbg_session *session,
         u32 event_mask)
{
 u32 events = gdev->pending_events & event_mask;

 gdev->pending_events &= ~events;
 return events;
}
