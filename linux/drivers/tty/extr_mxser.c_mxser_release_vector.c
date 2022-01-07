
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxser_board {int vector; } ;


 scalar_t__ mxser_overlapping_vector (struct mxser_board*) ;
 int release_region (int ,int) ;

__attribute__((used)) static void mxser_release_vector(struct mxser_board *brd)
{
 if (mxser_overlapping_vector(brd))
  return;
 release_region(brd->vector, 1);
}
