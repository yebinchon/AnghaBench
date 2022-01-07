
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idal_buffer {int dummy; } ;
struct ccw1 {scalar_t__ flags; int cmd_code; } ;
typedef int __u8 ;


 int idal_buffer_set_cda (struct idal_buffer*,struct ccw1*) ;

__attribute__((used)) static inline struct ccw1 *
tape_ccw_end_idal(struct ccw1 *ccw, __u8 cmd_code, struct idal_buffer *idal)
{
 ccw->cmd_code = cmd_code;
 ccw->flags = 0;
 idal_buffer_set_cda(idal, ccw);
 return ccw++;
}
