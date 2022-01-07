
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {size_t op; } ;


 int DBF_EVENT (int,char*,int ) ;
 int tape_34xx_done (struct tape_request*) ;
 int * tape_op_verbose ;

__attribute__((used)) static inline int
tape_34xx_erp_succeeded(struct tape_request *request)
{
 DBF_EVENT(3, "Error Recovery successful for %s\n",
    tape_op_verbose[request->op]);
 return tape_34xx_done(request);
}
