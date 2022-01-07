
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;


 int memset (struct iovec*,int ,int) ;

__attribute__((used)) static inline void new_iov(struct iovec **iov, int *iov_cnt)
{
 struct iovec *iovec;

 if (*iov_cnt != 0)
  (*iov)++;
 (*iov_cnt)++;

 iovec = *iov;
 memset(iovec, 0, sizeof(struct iovec));
}
