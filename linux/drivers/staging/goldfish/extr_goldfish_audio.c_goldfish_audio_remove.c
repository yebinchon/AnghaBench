
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int * audio_data ;
 int goldfish_audio_device ;
 int misc_deregister (int *) ;

__attribute__((used)) static int goldfish_audio_remove(struct platform_device *pdev)
{
 misc_deregister(&goldfish_audio_device);
 audio_data = ((void*)0);
 return 0;
}
