
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int io_addr; scalar_t__ revision; scalar_t__ supports_temp; } ;


 scalar_t__ DEBUG ;
 scalar_t__ PCWD_REVISION_A ;
 int cards_found ;
 scalar_t__ debug ;
 int misc_deregister (int *) ;
 int nowayout ;
 int pcwd_miscdev ;
 TYPE_1__ pcwd_private ;
 int pcwd_stop () ;
 int pr_debug (char*,unsigned int) ;
 int release_region (int,int) ;
 int temp_miscdev ;

__attribute__((used)) static int pcwd_isa_remove(struct device *dev, unsigned int id)
{
 if (debug >= DEBUG)
  pr_debug("pcwd_isa_remove id=%d\n", id);

 if (!pcwd_private.io_addr)
  return 1;


 if (!nowayout)
  pcwd_stop();


 misc_deregister(&pcwd_miscdev);
 if (pcwd_private.supports_temp)
  misc_deregister(&temp_miscdev);
 release_region(pcwd_private.io_addr,
   (pcwd_private.revision == PCWD_REVISION_A) ? 2 : 4);
 pcwd_private.io_addr = 0x0000;
 cards_found--;

 return 0;
}
