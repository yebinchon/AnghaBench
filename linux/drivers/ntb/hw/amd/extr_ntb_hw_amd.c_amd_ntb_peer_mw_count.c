
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int mw_count; } ;


 TYPE_1__* ntb_ndev (struct ntb_dev*) ;

__attribute__((used)) static int amd_ntb_peer_mw_count(struct ntb_dev *ntb)
{

 return ntb_ndev(ntb)->mw_count;
}
