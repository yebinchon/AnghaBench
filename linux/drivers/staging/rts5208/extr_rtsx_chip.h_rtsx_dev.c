
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtsx_chip {TYPE_2__* rtsx; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pci; } ;
struct TYPE_3__ {struct device dev; } ;



__attribute__((used)) static inline struct device *rtsx_dev(const struct rtsx_chip *chip)
{
 return &chip->rtsx->pci->dev;
}
