
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ssb_gige {int dev; } ;


 int ssb_read16 (int ,int ) ;

__attribute__((used)) static inline u16 gige_read16(struct ssb_gige *dev, u16 offset)
{
 return ssb_read16(dev->dev, offset);
}
