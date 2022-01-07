
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union cvmx_buf_ptr {int dummy; } cvmx_buf_ptr ;
typedef int uint64_t ;
typedef int cvmx_pko_status_t ;
typedef int cvmx_pko_lock_t ;
typedef int cvmx_pko_command_word0_t ;



__attribute__((used)) static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
  uint64_t queue, cvmx_pko_command_word0_t pko_command,
  union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
{
 cvmx_pko_status_t ret = 0;

 return ret;
}
