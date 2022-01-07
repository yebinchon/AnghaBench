
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbox_out {int dummy; } ;
typedef int raw_mbox ;
struct TYPE_2__ {int m_out; } ;
typedef TYPE_1__ mbox_t ;
typedef int adapter_t ;


 int issue_scb_block (int *,unsigned char*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
mega_support_ext_cdb(adapter_t *adapter)
{
 unsigned char raw_mbox[sizeof(struct mbox_out)];
 mbox_t *mbox;
 int rval;

 mbox = (mbox_t *)raw_mbox;

 memset(&mbox->m_out, 0, sizeof(raw_mbox));



 raw_mbox[0] = 0xA4;
 raw_mbox[2] = 0x16;

 rval = issue_scb_block(adapter, raw_mbox);

 return !rval;
}
