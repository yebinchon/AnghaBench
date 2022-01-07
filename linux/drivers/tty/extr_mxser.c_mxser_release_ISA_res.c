
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mxser_board {TYPE_2__* info; TYPE_1__* ports; } ;
struct TYPE_4__ {int nports; } ;
struct TYPE_3__ {int ioaddr; } ;


 int mxser_release_vector (struct mxser_board*) ;
 int release_region (int ,int) ;

__attribute__((used)) static void mxser_release_ISA_res(struct mxser_board *brd)
{
 release_region(brd->ports[0].ioaddr, 8 * brd->info->nports);
 mxser_release_vector(brd);
}
