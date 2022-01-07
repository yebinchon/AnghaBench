
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_tcu {int tx; } ;


 scalar_t__ TCU_MBOX_NUM_BYTES (unsigned int) ;
 int mbox_flush (int ,int) ;
 int mbox_send_message (int ,void*) ;

__attribute__((used)) static void tegra_tcu_write_one(struct tegra_tcu *tcu, u32 value,
    unsigned int count)
{
 void *msg;

 value |= TCU_MBOX_NUM_BYTES(count);
 msg = (void *)(unsigned long)value;
 mbox_send_message(tcu->tx, msg);
 mbox_flush(tcu->tx, 1000);
}
