
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ XferState; } ;
struct hw_fib {TYPE_1__ header; } ;
struct fib {struct hw_fib* hw_fib_va; } ;



__attribute__((used)) static void fib_dealloc(struct fib * fibptr)
{
 struct hw_fib *hw_fib = fibptr->hw_fib_va;
 hw_fib->header.XferState = 0;
}
