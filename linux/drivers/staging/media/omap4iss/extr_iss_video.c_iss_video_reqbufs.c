
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int dummy; } ;
struct iss_video_fh {int queue; } ;
struct file {int dummy; } ;


 struct iss_video_fh* to_iss_video_fh (void*) ;
 int vb2_reqbufs (int *,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int
iss_video_reqbufs(struct file *file, void *fh, struct v4l2_requestbuffers *rb)
{
 struct iss_video_fh *vfh = to_iss_video_fh(fh);

 return vb2_reqbufs(&vfh->queue, rb);
}
