
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cvmx_wqe_t ;



__attribute__((used)) static inline cvmx_wqe_t *cvmx_pow_work_response_async(int scr_addr)
{
 cvmx_wqe_t *wqe = (void *)(unsigned long)scr_addr;

 return wqe;
}
