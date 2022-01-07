
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int dummy; } ;


 int NTB_UNSAFE_DB ;
 int ndev_ignore_unsafe (int ,int ) ;
 int ntb_ndev (struct ntb_dev*) ;

__attribute__((used)) static int intel_ntb_db_is_unsafe(struct ntb_dev *ntb)
{
 return ndev_ignore_unsafe(ntb_ndev(ntb), NTB_UNSAFE_DB);
}
