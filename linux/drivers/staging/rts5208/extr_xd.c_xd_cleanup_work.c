
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ delay_write_flag; } ;
struct xd_info {scalar_t__ cleanup_counter; TYPE_1__ delay_write; } ;
struct rtsx_chip {struct xd_info xd_card; } ;


 int dev_dbg (int ,char*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int xd_delay_write (struct rtsx_chip*) ;

void xd_cleanup_work(struct rtsx_chip *chip)
{
}
