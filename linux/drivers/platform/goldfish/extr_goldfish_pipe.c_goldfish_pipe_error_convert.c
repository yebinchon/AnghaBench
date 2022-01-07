
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;




__attribute__((used)) static int goldfish_pipe_error_convert(int status)
{
 switch (status) {
 case 130:
  return -EAGAIN;
 case 128:
  return -ENOMEM;
 case 129:
  return -EIO;
 default:
  return -EINVAL;
 }
}
