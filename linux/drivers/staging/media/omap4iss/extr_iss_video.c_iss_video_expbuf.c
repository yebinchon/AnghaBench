
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_exportbuffer {int dummy; } ;
struct iss_video_fh {int queue; } ;
struct file {int dummy; } ;


 struct iss_video_fh* to_iss_video_fh (void*) ;
 int vb2_expbuf (int *,struct v4l2_exportbuffer*) ;

__attribute__((used)) static int
iss_video_expbuf(struct file *file, void *fh, struct v4l2_exportbuffer *e)
{
 struct iss_video_fh *vfh = to_iss_video_fh(fh);

 return vb2_expbuf(&vfh->queue, e);
}
