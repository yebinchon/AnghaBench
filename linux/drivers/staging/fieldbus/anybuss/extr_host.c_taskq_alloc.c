
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int dummy; } ;
struct device {int dummy; } ;
struct ab_task {int dummy; } ;


 int EIO ;
 int GFP_KERNEL ;
 void* devm_kzalloc (struct device*,size_t,int ) ;
 int kfifo_init (struct kfifo*,void*,size_t) ;

__attribute__((used)) static int taskq_alloc(struct device *dev, struct kfifo *q)
{
 void *buf;
 size_t size = 64 * sizeof(struct ab_task *);

 buf = devm_kzalloc(dev, size, GFP_KERNEL);
 if (!buf)
  return -EIO;
 return kfifo_init(q, buf, size);
}
