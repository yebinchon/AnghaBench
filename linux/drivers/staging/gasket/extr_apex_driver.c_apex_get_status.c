
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_dev {int dummy; } ;


 int GASKET_STATUS_ALIVE ;

__attribute__((used)) static int apex_get_status(struct gasket_dev *gasket_dev)
{

 return GASKET_STATUS_ALIVE;
}
