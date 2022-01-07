
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_ctx {int dummy; } ;


 int perf_terminate_test (struct perf_ctx*) ;

__attribute__((used)) static void perf_clear_threads(struct perf_ctx *perf)
{
 perf_terminate_test(perf);
}
