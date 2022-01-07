
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int const KL5KUSB105A_CTS ;
 int const KL5KUSB105A_DSR ;
 unsigned long TIOCM_CTS ;
 unsigned long TIOCM_DSR ;

__attribute__((used)) static unsigned long klsi_105_status2linestate(const __u16 status)
{
 unsigned long res = 0;

 res = ((status & KL5KUSB105A_DSR) ? TIOCM_DSR : 0)
       | ((status & KL5KUSB105A_CTS) ? TIOCM_CTS : 0)
       ;

 return res;
}
