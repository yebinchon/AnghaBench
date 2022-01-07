
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_req {int dummy; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void cpi_callback(struct sclp_req *req, void *data)
{
 struct completion *completion = data;

 complete(completion);
}
