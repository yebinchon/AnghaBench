
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devno; } ;
struct urdev {TYPE_1__ dev_id; } ;
struct diag210 {int vrdclen; int vrdcvcla; int vrdcdvno; } ;


 int EIO ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int diag210 (struct diag210*) ;

__attribute__((used)) static int get_urd_class(struct urdev *urd)
{
 static struct diag210 ur_diag210;
 int cc;

 ur_diag210.vrdcdvno = urd->dev_id.devno;
 ur_diag210.vrdclen = sizeof(struct diag210);

 cc = diag210(&ur_diag210);
 switch (cc) {
 case 0:
  return -EOPNOTSUPP;
 case 2:
  return ur_diag210.vrdcvcla;
 case 3:
  return -ENODEV;
 default:
  return -EIO;
 }
}
