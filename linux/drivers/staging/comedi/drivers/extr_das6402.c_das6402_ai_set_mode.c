
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 unsigned int AREF_GROUND ;
 unsigned int CR_AREF (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 unsigned int DAS6402_MODE_RANGE (unsigned int) ;
 unsigned int DAS6402_MODE_SE ;
 unsigned int DAS6402_MODE_UNI ;
 scalar_t__ comedi_range_is_unipolar (struct comedi_subdevice*,unsigned int) ;
 int das6402_set_mode (struct comedi_device*,unsigned int) ;

__attribute__((used)) static void das6402_ai_set_mode(struct comedi_device *dev,
    struct comedi_subdevice *s,
    unsigned int chanspec,
    unsigned int mode)
{
 unsigned int range = CR_RANGE(chanspec);
 unsigned int aref = CR_AREF(chanspec);

 mode |= DAS6402_MODE_RANGE(range);
 if (aref == AREF_GROUND)
  mode |= DAS6402_MODE_SE;
 if (comedi_range_is_unipolar(s, range))
  mode |= DAS6402_MODE_UNI;

 das6402_set_mode(dev, mode);
}
