
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_addrf_12 {int sec_len; int sec_offset; int pg_len; int pg_offset; int blk_len; int blk_offset; int pln_len; int pln_offset; int lun_len; int lun_offset; int ch_len; int ch_offset; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static ssize_t nvm_dev_attr_show_ppaf(struct nvm_addrf_12 *ppaf, char *page)
{
 return scnprintf(page, PAGE_SIZE,
  "0x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n",
    ppaf->ch_offset, ppaf->ch_len,
    ppaf->lun_offset, ppaf->lun_len,
    ppaf->pln_offset, ppaf->pln_len,
    ppaf->blk_offset, ppaf->blk_len,
    ppaf->pg_offset, ppaf->pg_len,
    ppaf->sec_offset, ppaf->sec_len);
}
