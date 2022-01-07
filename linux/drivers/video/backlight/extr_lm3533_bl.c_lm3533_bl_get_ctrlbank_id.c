
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3533_bl {int id; } ;



__attribute__((used)) static inline int lm3533_bl_get_ctrlbank_id(struct lm3533_bl *bl)
{
 return bl->id;
}
