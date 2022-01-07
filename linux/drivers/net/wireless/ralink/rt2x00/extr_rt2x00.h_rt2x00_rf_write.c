
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {int * rf; TYPE_1__* ops; } ;
struct TYPE_2__ {int rf_size; } ;


 int BUG_ON (int) ;

__attribute__((used)) static inline void rt2x00_rf_write(struct rt2x00_dev *rt2x00dev,
       const unsigned int word, u32 data)
{
 BUG_ON(word < 1 || word > rt2x00dev->ops->rf_size / sizeof(u32));
 rt2x00dev->rf[word - 1] = data;
}
