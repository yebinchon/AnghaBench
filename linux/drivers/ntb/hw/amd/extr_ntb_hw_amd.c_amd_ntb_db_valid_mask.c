
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int db_valid_mask; } ;


 TYPE_1__* ntb_ndev (struct ntb_dev*) ;

__attribute__((used)) static u64 amd_ntb_db_valid_mask(struct ntb_dev *ntb)
{
 return ntb_ndev(ntb)->db_valid_mask;
}
