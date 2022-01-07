
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int db_count; } ;


 TYPE_1__* ntb_ndev (struct ntb_dev*) ;

__attribute__((used)) static int amd_ntb_db_vector_count(struct ntb_dev *ntb)
{
 return ntb_ndev(ntb)->db_count;
}
