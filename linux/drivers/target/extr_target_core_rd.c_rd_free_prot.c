
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct rd_dev {int dummy; } ;


 struct rd_dev* RD_DEV (struct se_device*) ;
 int rd_release_prot_space (struct rd_dev*) ;

__attribute__((used)) static void rd_free_prot(struct se_device *dev)
{
 struct rd_dev *rd_dev = RD_DEV(dev);

 rd_release_prot_space(rd_dev);
}
