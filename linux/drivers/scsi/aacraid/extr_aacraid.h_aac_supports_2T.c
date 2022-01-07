
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int options; } ;
struct aac_dev {TYPE_1__ adapter_info; } ;


 int AAC_OPT_NEW_COMM_64 ;

__attribute__((used)) static inline int aac_supports_2T(struct aac_dev *dev)
{
 return (dev->adapter_info.options & AAC_OPT_NEW_COMM_64);
}
