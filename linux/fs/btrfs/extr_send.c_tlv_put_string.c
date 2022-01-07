
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct send_ctx {int dummy; } ;


 int strlen (char const*) ;
 int tlv_put (struct send_ctx*,int ,char const*,int) ;

__attribute__((used)) static int tlv_put_string(struct send_ctx *sctx, u16 attr,
     const char *str, int len)
{
 if (len == -1)
  len = strlen(str);
 return tlv_put(sctx, attr, str, len);
}
