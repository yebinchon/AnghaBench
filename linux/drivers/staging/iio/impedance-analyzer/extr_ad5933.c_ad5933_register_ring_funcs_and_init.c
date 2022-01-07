
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int * setup_ops; } ;
struct iio_buffer {int dummy; } ;


 int ENOMEM ;
 int ad5933_ring_setup_ops ;
 int iio_device_attach_buffer (struct iio_dev*,struct iio_buffer*) ;
 struct iio_buffer* iio_kfifo_allocate () ;

__attribute__((used)) static int ad5933_register_ring_funcs_and_init(struct iio_dev *indio_dev)
{
 struct iio_buffer *buffer;

 buffer = iio_kfifo_allocate();
 if (!buffer)
  return -ENOMEM;

 iio_device_attach_buffer(indio_dev, buffer);


 indio_dev->setup_ops = &ad5933_ring_setup_ops;

 return 0;
}
