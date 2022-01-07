
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mxser_board {scalar_t__ vector; TYPE_2__* info; TYPE_1__* ports; } ;
struct TYPE_4__ {int nports; } ;
struct TYPE_3__ {scalar_t__ ioaddr; } ;


 scalar_t__ allow_overlapping_vector ;

__attribute__((used)) static bool mxser_overlapping_vector(struct mxser_board *brd)
{
 return allow_overlapping_vector &&
  brd->vector >= brd->ports[0].ioaddr &&
  brd->vector < brd->ports[0].ioaddr + 8 * brd->info->nports;
}
