
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; int core; } ;


 int BUG_ON (int) ;
 TYPE_1__ hdmi ;
 int hdmi4_read_edid (int *,int *,int) ;
 int hdmi_runtime_get () ;
 int hdmi_runtime_put () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int read_edid(u8 *buf, int len)
{
 int r;

 mutex_lock(&hdmi.lock);

 r = hdmi_runtime_get();
 BUG_ON(r);

 r = hdmi4_read_edid(&hdmi.core, buf, len);

 hdmi_runtime_put();
 mutex_unlock(&hdmi.lock);

 return r;
}
