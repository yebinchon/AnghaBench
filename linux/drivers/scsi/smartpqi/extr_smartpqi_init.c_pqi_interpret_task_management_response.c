
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_task_management_response {int response_code; } ;


 int EAGAIN ;
 int EIO ;




__attribute__((used)) static int pqi_interpret_task_management_response(
 struct pqi_task_management_response *response)
{
 int rc;

 switch (response->response_code) {
 case 130:
 case 129:
  rc = 0;
  break;
 case 128:
  rc = -EAGAIN;
  break;
 default:
  rc = -EIO;
  break;
 }

 return rc;
}
