
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ses_device {scalar_t__ page1; } ;
struct enclosure_device {struct ses_device* scratch; } ;


 unsigned long long get_unaligned_be64 (scalar_t__) ;
 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static int ses_show_id(struct enclosure_device *edev, char *buf)
{
 struct ses_device *ses_dev = edev->scratch;
 unsigned long long id = get_unaligned_be64(ses_dev->page1+8+4);

 return sprintf(buf, "%#llx\n", id);
}
