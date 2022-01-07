
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int ref_count; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline void qeth_get_cmd(struct qeth_cmd_buffer *iob)
{
 refcount_inc(&iob->ref_count);
}
