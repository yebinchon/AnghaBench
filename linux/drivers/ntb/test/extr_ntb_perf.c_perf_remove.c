
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_ctx {int dummy; } ;
struct ntb_dev {struct perf_ctx* ctx; } ;
struct ntb_client {int dummy; } ;


 int perf_clear_dbgfs (struct perf_ctx*) ;
 int perf_clear_threads (struct perf_ctx*) ;
 int perf_disable_service (struct perf_ctx*) ;

__attribute__((used)) static void perf_remove(struct ntb_client *client, struct ntb_dev *ntb)
{
 struct perf_ctx *perf = ntb->ctx;

 perf_clear_dbgfs(perf);

 perf_disable_service(perf);

 perf_clear_threads(perf);
}
