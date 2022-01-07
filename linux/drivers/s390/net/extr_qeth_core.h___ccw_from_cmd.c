
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int length; scalar_t__ data; } ;
struct ccw1 {int dummy; } ;


 scalar_t__ ALIGN (int ,int) ;

__attribute__((used)) static inline struct ccw1 *__ccw_from_cmd(struct qeth_cmd_buffer *iob)
{
 return (struct ccw1 *)(iob->data + ALIGN(iob->length, 8));
}
