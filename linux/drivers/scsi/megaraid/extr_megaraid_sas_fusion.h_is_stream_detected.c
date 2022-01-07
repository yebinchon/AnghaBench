
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* bytes; } ;
struct RAID_CONTEXT_G35 {TYPE_1__ u; } ;


 int STREAM_DETECT_MASK ;

__attribute__((used)) static inline bool is_stream_detected(struct RAID_CONTEXT_G35 *rctx_g35)
{
 return ((rctx_g35->u.bytes[1] & STREAM_DETECT_MASK));
}
