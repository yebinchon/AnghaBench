
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct inode {int dummy; } ;
typedef int s64 ;
struct TYPE_2__ {int loadaddr; unsigned int execaddr; } ;


 TYPE_1__* ADFS_I (struct inode*) ;
 int adfs_inode_is_stamped (struct inode*) ;
 struct timespec64 current_time (struct inode*) ;
 struct timespec64 ns_to_timespec64 (int) ;

__attribute__((used)) static void
adfs_adfs2unix_time(struct timespec64 *tv, struct inode *inode)
{
 unsigned int high, low;



 static const s64 nsec_unix_epoch_diff_risc_os_epoch =
       2208988800000000000LL;
 s64 nsec;

 if (!adfs_inode_is_stamped(inode))
  goto cur_time;

 high = ADFS_I(inode)->loadaddr & 0xFF;
 low = ADFS_I(inode)->execaddr;




 nsec = (((s64) high << 32) | (s64) low) * 10000000;


 if (nsec < nsec_unix_epoch_diff_risc_os_epoch)
  goto too_early;


 nsec -= nsec_unix_epoch_diff_risc_os_epoch;

 *tv = ns_to_timespec64(nsec);
 return;

 cur_time:
 *tv = current_time(inode);
 return;

 too_early:
 tv->tv_sec = tv->tv_nsec = 0;
 return;
}
