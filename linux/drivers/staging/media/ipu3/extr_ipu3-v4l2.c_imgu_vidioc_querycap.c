
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct imgu_video_device {char* name; } ;
struct file {int dummy; } ;


 int IMGU_NAME ;
 struct imgu_video_device* file_to_intel_imgu_node (struct file*) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;

__attribute__((used)) static int imgu_vidioc_querycap(struct file *file, void *fh,
    struct v4l2_capability *cap)
{
 struct imgu_video_device *node = file_to_intel_imgu_node(file);

 strscpy(cap->driver, IMGU_NAME, sizeof(cap->driver));
 strscpy(cap->card, IMGU_NAME, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "PCI:%s", node->name);

 return 0;
}
