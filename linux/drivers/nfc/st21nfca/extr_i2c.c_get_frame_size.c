
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ ST21NFCA_SOF_EOF ;

__attribute__((used)) static int get_frame_size(u8 *buf, int buflen)
{
 int len = 0;

 if (buf[len + 1] == ST21NFCA_SOF_EOF)
  return 0;

 for (len = 1; len < buflen && buf[len] != ST21NFCA_SOF_EOF; len++)
  ;

 return len;
}
