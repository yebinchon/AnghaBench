
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_vino {int ino; } ;
typedef int ino_t ;


 int ceph_ino_to_ino32 (int ) ;

__attribute__((used)) static inline ino_t ceph_vino_to_ino(struct ceph_vino vino)
{



 return (ino_t)vino.ino;

}
