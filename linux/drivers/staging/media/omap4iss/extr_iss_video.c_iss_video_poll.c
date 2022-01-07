
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_video_fh {int queue; } ;
struct file {int private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 struct iss_video_fh* to_iss_video_fh (int ) ;
 int vb2_poll (int *,struct file*,int *) ;

__attribute__((used)) static __poll_t iss_video_poll(struct file *file, poll_table *wait)
{
 struct iss_video_fh *vfh = to_iss_video_fh(file->private_data);

 return vb2_poll(&vfh->queue, file, wait);
}
