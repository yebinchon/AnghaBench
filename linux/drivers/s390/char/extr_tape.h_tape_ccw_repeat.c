
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw1 {int cmd_code; scalar_t__ cda; scalar_t__ count; int flags; } ;
typedef scalar_t__ addr_t ;
typedef int __u8 ;
typedef scalar_t__ __u32 ;


 int CCW_FLAG_CC ;

__attribute__((used)) static inline struct ccw1 *
tape_ccw_repeat(struct ccw1 *ccw, __u8 cmd_code, int count)
{
 while (count-- > 0) {
  ccw->cmd_code = cmd_code;
  ccw->flags = CCW_FLAG_CC;
  ccw->count = 0;
  ccw->cda = (__u32)(addr_t) &ccw->cmd_code;
  ccw++;
 }
 return ccw;
}
