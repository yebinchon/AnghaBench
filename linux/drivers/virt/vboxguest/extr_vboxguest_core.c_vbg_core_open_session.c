
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vbg_session {int requestor; struct vbg_dev* gdev; } ;
struct vbg_dev {int dummy; } ;


 int ENOMEM ;
 struct vbg_session* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct vbg_session* kzalloc (int,int ) ;

struct vbg_session *vbg_core_open_session(struct vbg_dev *gdev, u32 requestor)
{
 struct vbg_session *session;

 session = kzalloc(sizeof(*session), GFP_KERNEL);
 if (!session)
  return ERR_PTR(-ENOMEM);

 session->gdev = gdev;
 session->requestor = requestor;

 return session;
}
