
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipid_device {int dummy; } ;


 int mipid_transfer (struct mipid_device*,int,int *,int ,int *,int) ;

__attribute__((used)) static inline void mipid_read(struct mipid_device *md,
         int reg, u8 *buf, int len)
{
 mipid_transfer(md, reg, ((void*)0), 0, buf, len);
}
