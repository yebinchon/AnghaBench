
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ASC_IOADR_GAP ;
 int* _asc_def_iop_base ;
 int advansys_release (int ) ;
 int dev_get_drvdata (struct device*) ;
 int release_region (int,int ) ;

__attribute__((used)) static int advansys_isa_remove(struct device *dev, unsigned int id)
{
 int ioport = _asc_def_iop_base[id];
 advansys_release(dev_get_drvdata(dev));
 release_region(ioport, ASC_IOADR_GAP);
 return 0;
}
