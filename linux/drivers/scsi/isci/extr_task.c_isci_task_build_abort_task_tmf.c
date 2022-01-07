
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_tmf {int io_tag; } ;
struct isci_request {int io_tag; } ;
typedef enum isci_tmf_function_codes { ____Placeholder_isci_tmf_function_codes } isci_tmf_function_codes ;


 int isci_task_build_tmf (struct isci_tmf*,int) ;

__attribute__((used)) static void isci_task_build_abort_task_tmf(struct isci_tmf *tmf,
        enum isci_tmf_function_codes code,
        struct isci_request *old_request)
{
 isci_task_build_tmf(tmf, code);
 tmf->io_tag = old_request->io_tag;
}
