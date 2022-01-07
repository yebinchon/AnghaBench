
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CEPH_CAP_GBUFFER ;
 int CEPH_CAP_GCACHE ;
 int CEPH_CAP_GEXCL ;
 int CEPH_CAP_GLAZYIO ;
 int CEPH_CAP_GRD ;
 int CEPH_CAP_GSHARED ;
 int CEPH_CAP_GWR ;
 int CEPH_CAP_GWREXTEND ;

__attribute__((used)) static char *gcap_string(char *s, int c)
{
 if (c & CEPH_CAP_GSHARED)
  *s++ = 's';
 if (c & CEPH_CAP_GEXCL)
  *s++ = 'x';
 if (c & CEPH_CAP_GCACHE)
  *s++ = 'c';
 if (c & CEPH_CAP_GRD)
  *s++ = 'r';
 if (c & CEPH_CAP_GWR)
  *s++ = 'w';
 if (c & CEPH_CAP_GBUFFER)
  *s++ = 'b';
 if (c & CEPH_CAP_GWREXTEND)
  *s++ = 'a';
 if (c & CEPH_CAP_GLAZYIO)
  *s++ = 'l';
 return s;
}
