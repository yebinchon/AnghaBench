
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {size_t op; int device; } ;


 int DBF_EVENT (int,char*,int ) ;
 int TAPE_IO_SUCCESS ;






 int tape_34xx_delete_sbid_from (int ,int ) ;
 int * tape_op_verbose ;

__attribute__((used)) static inline int
tape_34xx_done(struct tape_request *request)
{
 DBF_EVENT(6, "%s done\n", tape_op_verbose[request->op]);

 switch (request->op) {
  case 132:
  case 131:
  case 129:
  case 128:
  case 133:
  case 130:
   tape_34xx_delete_sbid_from(request->device, 0);
   break;
  default:
   ;
 }
 return TAPE_IO_SUCCESS;
}
