
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;


 int cmf_generic_reset (struct ccw_device*) ;

__attribute__((used)) static void reset_cmb(struct ccw_device *cdev)
{
 cmf_generic_reset(cdev);
}
