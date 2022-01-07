
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int mutex; } ;
struct TYPE_4__ {TYPE_1__ lcp; } ;
struct c67x00_device {TYPE_2__ hpi; } ;


 int HUSB_pEOT ;
 int hpi_write_word (struct c67x00_device*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void c67x00_ll_set_husb_eot(struct c67x00_device *dev, u16 value)
{
 mutex_lock(&dev->hpi.lcp.mutex);
 hpi_write_word(dev, HUSB_pEOT, value);
 mutex_unlock(&dev->hpi.lcp.mutex);
}
