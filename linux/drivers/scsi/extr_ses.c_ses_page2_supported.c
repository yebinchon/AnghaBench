
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ses_device {int * page2; } ;
struct enclosure_device {struct ses_device* scratch; } ;



__attribute__((used)) static bool ses_page2_supported(struct enclosure_device *edev)
{
 struct ses_device *ses_dev = edev->scratch;

 return (ses_dev->page2 != ((void*)0));
}
