
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct comedi_device {int dummy; } ;


 int S626_LP_MISC1 ;
 int S626_LP_WRMISC2 ;
 int S626_MISC1_WDISABLE ;
 int S626_MISC1_WENABLE ;
 int s626_debi_write (struct comedi_device*,int ,int ) ;

__attribute__((used)) static void s626_write_misc2(struct comedi_device *dev, u16 new_image)
{
 s626_debi_write(dev, S626_LP_MISC1, S626_MISC1_WENABLE);
 s626_debi_write(dev, S626_LP_WRMISC2, new_image);
 s626_debi_write(dev, S626_LP_MISC1, S626_MISC1_WDISABLE);
}
