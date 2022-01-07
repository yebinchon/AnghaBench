
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw1 {scalar_t__ count; } ;


 scalar_t__ ccw_is_noop (struct ccw1*) ;
 scalar_t__ ccw_is_read (struct ccw1*) ;
 scalar_t__ ccw_is_read_backward (struct ccw1*) ;
 scalar_t__ ccw_is_sense (struct ccw1*) ;
 int ccw_is_skip (struct ccw1*) ;

__attribute__((used)) static inline int ccw_does_data_transfer(struct ccw1 *ccw)
{

 if (ccw->count == 0)
  return 0;


 if (ccw_is_noop(ccw))
  return 0;


 if (!ccw_is_skip(ccw))
  return 1;






 if (ccw_is_read(ccw) || ccw_is_read_backward(ccw))
  return 0;

 if (ccw_is_sense(ccw))
  return 0;


 return 1;
}
