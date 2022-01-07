
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_nvram {scalar_t__ type; } ;
struct sym_device {struct sym_nvram* nvram; } ;


 int sym_read_nvram (struct sym_device*,struct sym_nvram*) ;

__attribute__((used)) static void sym_get_nvram(struct sym_device *devp, struct sym_nvram *nvp)
{
 devp->nvram = nvp;
 nvp->type = 0;

 sym_read_nvram(devp, nvp);
}
