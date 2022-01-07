
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct iss_video_fh {int queue; } ;
struct file {int f_flags; } ;


 int O_NONBLOCK ;
 struct iss_video_fh* to_iss_video_fh (void*) ;
 int vb2_dqbuf (int *,struct v4l2_buffer*,int) ;

__attribute__((used)) static int
iss_video_dqbuf(struct file *file, void *fh, struct v4l2_buffer *b)
{
 struct iss_video_fh *vfh = to_iss_video_fh(fh);

 return vb2_dqbuf(&vfh->queue, b, file->f_flags & O_NONBLOCK);
}
