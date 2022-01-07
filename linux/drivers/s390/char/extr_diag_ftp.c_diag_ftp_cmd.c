
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmcdrv_ftp_cmdspec {int id; int buf; int len; int ofs; int fname; } ;
struct diag_ftp_ldfpl {int transferred; size_t fsize; int bufaddr; int buflen; int offset; int fident; } ;
typedef int ssize_t ;






 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int EPERM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int HMCDRV_FTP_FIDENT_MAX ;
 unsigned long HZ ;
 int diag_ftp_2c4 (struct diag_ftp_ldfpl*,int ) ;
 int diag_ftp_rx_complete ;
 int diag_ftp_subcode ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;
 int init_completion (int *) ;
 unsigned long jiffies ;
 int pr_debug (char*,int,...) ;
 int strlcpy (int ,int ,int) ;
 int virt_to_phys (int ) ;
 int wait_for_completion (int *) ;

ssize_t diag_ftp_cmd(const struct hmcdrv_ftp_cmdspec *ftp, size_t *fsize)
{
 struct diag_ftp_ldfpl *ldfpl;
 ssize_t len;







 init_completion(&diag_ftp_rx_complete);

 ldfpl = (void *) get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!ldfpl) {
  len = -ENOMEM;
  goto out;
 }

 len = strlcpy(ldfpl->fident, ftp->fname, sizeof(ldfpl->fident));
 if (len >= HMCDRV_FTP_FIDENT_MAX) {
  len = -EINVAL;
  goto out_free;
 }

 ldfpl->transferred = 0;
 ldfpl->fsize = 0;
 ldfpl->offset = ftp->ofs;
 ldfpl->buflen = ftp->len;
 ldfpl->bufaddr = virt_to_phys(ftp->buf);

 len = diag_ftp_2c4(ldfpl, ftp->id);
 if (len)
  goto out_free;





 wait_for_completion(&diag_ftp_rx_complete);
 switch (diag_ftp_subcode) {
 case 128:
  len = ldfpl->transferred;
  if (fsize)
   *fsize = ldfpl->fsize;
  break;
 case 130:
  len = -EPERM;
  break;
 case 129:
  len = -EBUSY;
  break;
 case 131:
  len = -ENOENT;
  break;
 default:
  len = -EIO;
  break;
 }

out_free:
 free_page((unsigned long) ldfpl);
out:
 return len;
}
