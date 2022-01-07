
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct vb2_queue {int type; } ;
struct device {int dummy; } ;
struct amvdec_session {int pixfmt_cap; } ;


 int EINVAL ;




 unsigned int amvdec_get_output_size (struct amvdec_session*) ;
 int process_num_buffers (struct vb2_queue*,struct amvdec_session*,unsigned int*,int) ;
 struct amvdec_session* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int vdec_queue_setup(struct vb2_queue *q, unsigned int *num_buffers,
       unsigned int *num_planes, unsigned int sizes[],
       struct device *alloc_devs[])
{
 struct amvdec_session *sess = vb2_get_drv_priv(q);
 u32 output_size = amvdec_get_output_size(sess);

 if (*num_planes) {
  switch (q->type) {
  case 130:
   if (*num_planes != 1 || sizes[0] < output_size)
    return -EINVAL;
   break;
  case 131:
   switch (sess->pixfmt_cap) {
   case 129:
    if (*num_planes != 2 ||
        sizes[0] < output_size ||
        sizes[1] < output_size / 2)
     return -EINVAL;
    break;
   case 128:
    if (*num_planes != 3 ||
        sizes[0] < output_size ||
        sizes[1] < output_size / 4 ||
        sizes[2] < output_size / 4)
     return -EINVAL;
    break;
   default:
    return -EINVAL;
   }

   process_num_buffers(q, sess, num_buffers, 0);
   break;
  }

  return 0;
 }

 switch (q->type) {
 case 130:
  sizes[0] = amvdec_get_output_size(sess);
  *num_planes = 1;
  break;
 case 131:
  switch (sess->pixfmt_cap) {
  case 129:
   sizes[0] = output_size;
   sizes[1] = output_size / 2;
   *num_planes = 2;
   break;
  case 128:
   sizes[0] = output_size;
   sizes[1] = output_size / 4;
   sizes[2] = output_size / 4;
   *num_planes = 3;
   break;
  default:
   return -EINVAL;
  }

  process_num_buffers(q, sess, num_buffers, 1);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
