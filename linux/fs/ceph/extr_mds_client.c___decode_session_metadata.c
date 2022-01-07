
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int bad ;
 int ceph_decode_32_safe (void**,void*,int ,int ) ;
 int ceph_decode_need (void**,void*,int ,int ) ;
 int strncmp (void*,char*,int ) ;
 scalar_t__ strnstr (void*,char*,int ) ;

__attribute__((used)) static int __decode_session_metadata(void **p, void *end,
         bool *blacklisted)
{

 u32 n;
 bool err_str;
 ceph_decode_32_safe(p, end, n, bad);
 while (n-- > 0) {
  u32 len;
  ceph_decode_32_safe(p, end, len, bad);
  ceph_decode_need(p, end, len, bad);
  err_str = !strncmp(*p, "error_string", len);
  *p += len;
  ceph_decode_32_safe(p, end, len, bad);
  ceph_decode_need(p, end, len, bad);
  if (err_str && strnstr(*p, "blacklisted", len))
   *blacklisted = 1;
  *p += len;
 }
 return 0;
bad:
 return -1;
}
