
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_req {int dummy; } ;


 int complete (int *) ;
 int sclp_request_queue_flushed ;

__attribute__((used)) static void sclp_suspend_req_cb(struct sclp_req *req, void *data)
{
 complete(&sclp_request_queue_flushed);
}
