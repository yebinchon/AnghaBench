
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SCLP_PM_EVENT_THAW ;
 int sclp_undo_suspend (int ) ;

__attribute__((used)) static int sclp_thaw(struct device *dev)
{
 return sclp_undo_suspend(SCLP_PM_EVENT_THAW);
}
