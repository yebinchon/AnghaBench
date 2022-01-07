
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct aac_aifcmd {scalar_t__ data; } ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int aac_aif_data(struct aac_aifcmd *aifcmd, uint32_t index)
{
 return le32_to_cpu(((__le32 *)aifcmd->data)[index]);
}
