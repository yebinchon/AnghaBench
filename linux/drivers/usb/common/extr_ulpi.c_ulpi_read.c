
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int parent; } ;
struct ulpi {TYPE_2__ dev; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* read ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

int ulpi_read(struct ulpi *ulpi, u8 addr)
{
 return ulpi->ops->read(ulpi->dev.parent, addr);
}
