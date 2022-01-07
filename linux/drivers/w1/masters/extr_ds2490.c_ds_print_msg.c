
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,unsigned char*,unsigned char) ;

__attribute__((used)) static inline void ds_print_msg(unsigned char *buf, unsigned char *str, int off)
{
 pr_info("%45s: %8x\n", str, buf[off]);
}
