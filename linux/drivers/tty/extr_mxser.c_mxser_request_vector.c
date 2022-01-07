
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxser_board {int vector; } ;


 int EIO ;
 scalar_t__ mxser_overlapping_vector (struct mxser_board*) ;
 scalar_t__ request_region (int ,int,char*) ;

__attribute__((used)) static int mxser_request_vector(struct mxser_board *brd)
{
 if (mxser_overlapping_vector(brd))
  return 0;
 return request_region(brd->vector, 1, "mxser(vector)") ? 0 : -EIO;
}
