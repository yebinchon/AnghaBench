
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct iss_video_fh {int queue; } ;
struct file {int dummy; } ;


 struct iss_video_fh* to_iss_video_fh (void*) ;
 int vb2_querybuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int
iss_video_querybuf(struct file *file, void *fh, struct v4l2_buffer *b)
{
 struct iss_video_fh *vfh = to_iss_video_fh(fh);

 return vb2_querybuf(&vfh->queue, b);
}
