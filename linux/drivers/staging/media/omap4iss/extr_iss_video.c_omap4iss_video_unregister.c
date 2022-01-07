
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_video {int video; } ;


 int video_unregister_device (int *) ;

void omap4iss_video_unregister(struct iss_video *video)
{
 video_unregister_device(&video->video);
}
