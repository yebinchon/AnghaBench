
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ssb_gige {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ SSB_GIGE_PCICFG ;
 int gige_read16 (struct ssb_gige*,scalar_t__) ;

__attribute__((used)) static inline
u16 gige_pcicfg_read16(struct ssb_gige *dev, unsigned int offset)
{
 BUG_ON(offset >= 256);
 return gige_read16(dev, SSB_GIGE_PCICFG + offset);
}
