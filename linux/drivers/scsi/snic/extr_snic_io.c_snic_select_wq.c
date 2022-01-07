
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int SNIC_WQ_MAX ;

__attribute__((used)) static int
snic_select_wq(struct snic *snic)
{

 BUILD_BUG_ON(SNIC_WQ_MAX > 1);

 return 0;
}
