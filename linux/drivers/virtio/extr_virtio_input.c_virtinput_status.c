
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_input {int dummy; } ;
struct input_dev {int dummy; } ;


 struct virtio_input* input_get_drvdata (struct input_dev*) ;
 int virtinput_send_status (struct virtio_input*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int virtinput_status(struct input_dev *idev, unsigned int type,
       unsigned int code, int value)
{
 struct virtio_input *vi = input_get_drvdata(idev);

 return virtinput_send_status(vi, type, code, value);
}
