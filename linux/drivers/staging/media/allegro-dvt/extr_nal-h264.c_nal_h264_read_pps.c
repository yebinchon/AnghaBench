
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int pos; scalar_t__ error; } ;
struct nal_h264_pps {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ DIV_ROUND_UP (int,int) ;
 scalar_t__ EINVAL ;
 int nal_h264_rbsp_pps (struct rbsp*,struct nal_h264_pps*) ;
 int nal_h264_rbsp_trailing_bits (struct rbsp*) ;
 int nal_h264_read_start_code_prefix (struct rbsp*) ;
 int rbsp_init (struct rbsp*,void*,size_t,int *) ;
 int read ;

ssize_t nal_h264_read_pps(const struct device *dev,
     struct nal_h264_pps *pps, void *src, size_t n)
{
 struct rbsp rbsp;

 if (!src)
  return -EINVAL;

 rbsp_init(&rbsp, src, n, &read);

 nal_h264_read_start_code_prefix(&rbsp);


 rbsp.pos += 8;

 nal_h264_rbsp_pps(&rbsp, pps);

 nal_h264_rbsp_trailing_bits(&rbsp);

 if (rbsp.error)
  return rbsp.error;

 return DIV_ROUND_UP(rbsp.pos, 8);
}
