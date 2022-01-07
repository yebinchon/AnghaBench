
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qm_fd {int dummy; } ;
struct hp_handler {scalar_t__ addr; int tx_mixer; int rx_mixer; int * frame_ptr; } ;


 int EIO ;
 int HP_FIRST_WORD ;
 int HP_NUM_WORDS ;
 int do_lfsr (int ) ;
 int pr_crit (char*,...) ;
 scalar_t__ qm_fd_addr_get64 (struct qm_fd const*) ;

__attribute__((used)) static inline int process_frame_data(struct hp_handler *handler,
         const struct qm_fd *fd)
{
 u32 *p = handler->frame_ptr;
 u32 lfsr = HP_FIRST_WORD;
 int loop;

 if (qm_fd_addr_get64(fd) != handler->addr) {
  pr_crit("bad frame address, [%llX != %llX]\n",
   qm_fd_addr_get64(fd), handler->addr);
  return -EIO;
 }
 for (loop = 0; loop < HP_NUM_WORDS; loop++, p++) {
  *p ^= handler->rx_mixer;
  if (*p != lfsr) {
   pr_crit("corrupt frame data");
   return -EIO;
  }
  *p ^= handler->tx_mixer;
  lfsr = do_lfsr(lfsr);
 }
 return 0;
}
