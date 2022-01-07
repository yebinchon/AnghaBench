
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_device {int dummy; } ;
struct pps_bind_args {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int pps_kc_bind(struct pps_device *pps,
  struct pps_bind_args *bind_args) { return -EOPNOTSUPP; }
