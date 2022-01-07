
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {size_t size; scalar_t__ error; struct nal_h264_ops* ops; scalar_t__ pos; void* data; } ;
struct nal_h264_ops {int dummy; } ;



__attribute__((used)) static void rbsp_init(struct rbsp *rbsp, void *addr, size_t size,
        struct nal_h264_ops *ops)
{
 if (!rbsp)
  return;

 rbsp->data = addr;
 rbsp->size = size;
 rbsp->pos = 0;
 rbsp->ops = ops;
 rbsp->error = 0;
}
