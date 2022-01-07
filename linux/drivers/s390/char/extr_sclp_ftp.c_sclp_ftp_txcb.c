
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_req {int sccb; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;
 int pr_debug (char*,int ,int,int ) ;

__attribute__((used)) static void sclp_ftp_txcb(struct sclp_req *req, void *data)
{
 struct completion *completion = data;





 complete(completion);
}
