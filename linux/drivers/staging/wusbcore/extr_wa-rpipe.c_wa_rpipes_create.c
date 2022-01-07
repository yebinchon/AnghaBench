
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wahc {int * rpipe_bm; int rpipes; TYPE_1__* wa_descr; } ;
struct TYPE_2__ {int wNumRPipes; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * bitmap_zalloc (int ,int ) ;
 int le16_to_cpu (int ) ;

int wa_rpipes_create(struct wahc *wa)
{
 wa->rpipes = le16_to_cpu(wa->wa_descr->wNumRPipes);
 wa->rpipe_bm = bitmap_zalloc(wa->rpipes, GFP_KERNEL);
 if (wa->rpipe_bm == ((void*)0))
  return -ENOMEM;
 return 0;
}
