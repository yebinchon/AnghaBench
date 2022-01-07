
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef enum cvmx_pow_tag_type { ____Placeholder_cvmx_pow_tag_type } cvmx_pow_tag_type ;
typedef int cvmx_wqe_t ;



__attribute__((used)) static inline void cvmx_pow_work_submit(cvmx_wqe_t *wqp, uint32_t tag,
     enum cvmx_pow_tag_type tag_type,
     uint64_t qos, uint64_t grp)
{ }
