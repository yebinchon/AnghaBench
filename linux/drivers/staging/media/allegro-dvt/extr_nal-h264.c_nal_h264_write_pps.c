
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int pos; scalar_t__ error; } ;
struct nal_h264_pps {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ DIV_ROUND_UP (int ,int) ;
 scalar_t__ EINVAL ;
 unsigned int PICTURE_PARAMETER_SET ;
 int nal_h264_rbsp_pps (struct rbsp*,struct nal_h264_pps*) ;
 int nal_h264_rbsp_trailing_bits (struct rbsp*) ;
 int nal_h264_write_start_code_prefix (struct rbsp*) ;
 int rbsp_bit (struct rbsp*,unsigned int*) ;
 int rbsp_bits (struct rbsp*,int,unsigned int*) ;
 int rbsp_init (struct rbsp*,void*,size_t,int *) ;
 int write ;

ssize_t nal_h264_write_pps(const struct device *dev,
      void *dest, size_t n, struct nal_h264_pps *pps)
{
 struct rbsp rbsp;
 unsigned int forbidden_zero_bit = 0;
 unsigned int nal_ref_idc = 0;
 unsigned int nal_unit_type = PICTURE_PARAMETER_SET;

 if (!dest)
  return -EINVAL;

 rbsp_init(&rbsp, dest, n, &write);

 nal_h264_write_start_code_prefix(&rbsp);


 rbsp_bit(&rbsp, &forbidden_zero_bit);
 rbsp_bits(&rbsp, 2, &nal_ref_idc);
 rbsp_bits(&rbsp, 5, &nal_unit_type);

 nal_h264_rbsp_pps(&rbsp, pps);

 nal_h264_rbsp_trailing_bits(&rbsp);

 if (rbsp.error)
  return rbsp.error;

 return DIV_ROUND_UP(rbsp.pos, 8);
}
