
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int se_dev; } ;
typedef int sector_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 int fd_do_prot_fill (int ,int ,int ,void*,int ) ;
 int free_page (unsigned long) ;
 int memset (void*,int,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int
fd_do_prot_unmap(struct se_cmd *cmd, sector_t lba, sector_t nolb)
{
 void *buf;
 int rc;

 buf = (void *)__get_free_page(GFP_KERNEL);
 if (!buf) {
  pr_err("Unable to allocate FILEIO prot buf\n");
  return -ENOMEM;
 }
 memset(buf, 0xff, PAGE_SIZE);

 rc = fd_do_prot_fill(cmd->se_dev, lba, nolb, buf, PAGE_SIZE);

 free_page((unsigned long)buf);

 return rc;
}
