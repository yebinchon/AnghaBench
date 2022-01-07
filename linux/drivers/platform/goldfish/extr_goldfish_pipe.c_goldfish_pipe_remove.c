
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct goldfish_pipe_dev {int dummy; } ;


 int goldfish_pipe_device_deinit (struct platform_device*,struct goldfish_pipe_dev*) ;
 struct goldfish_pipe_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int goldfish_pipe_remove(struct platform_device *pdev)
{
 struct goldfish_pipe_dev *dev = platform_get_drvdata(pdev);

 goldfish_pipe_device_deinit(pdev, dev);
 return 0;
}
