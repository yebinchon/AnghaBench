
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miscdevice {char* name; int * fops; int minor; } ;


 int MISC_DYNAMIC_MINOR ;
 int goldfish_pipe_fops ;
 int memset (struct miscdevice*,int ,int) ;

__attribute__((used)) static void init_miscdevice(struct miscdevice *miscdev)
{
 memset(miscdev, 0, sizeof(*miscdev));

 miscdev->minor = MISC_DYNAMIC_MINOR;
 miscdev->name = "goldfish_pipe";
 miscdev->fops = &goldfish_pipe_fops;
}
