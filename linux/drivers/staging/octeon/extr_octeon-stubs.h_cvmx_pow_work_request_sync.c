
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void cvmx_wqe_t ;
typedef scalar_t__ cvmx_pow_wait_t ;



__attribute__((used)) static inline cvmx_wqe_t *cvmx_pow_work_request_sync(cvmx_pow_wait_t wait)
{
 return (void *)(unsigned long)wait;
}
