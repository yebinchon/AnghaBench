
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int add_cdb_len; int * add_cdb; } ;
struct TYPE_5__ {TYPE_1__ fcp_cmnd; } ;
struct TYPE_6__ {TYPE_2__ isp24; } ;
struct atio_from_isp {TYPE_3__ u; } ;


 int be32_to_cpu (int ) ;
 int get_unaligned (int *) ;

__attribute__((used)) static inline int get_datalen_for_atio(struct atio_from_isp *atio)
{
 int len = atio->u.isp24.fcp_cmnd.add_cdb_len;

 return (be32_to_cpu(get_unaligned((uint32_t *)
     &atio->u.isp24.fcp_cmnd.add_cdb[len * 4])));
}
