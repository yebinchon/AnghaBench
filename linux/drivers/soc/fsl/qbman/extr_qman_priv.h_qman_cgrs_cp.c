
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_cgrs {int dummy; } ;



__attribute__((used)) static inline void qman_cgrs_cp(struct qman_cgrs *dest,
    const struct qman_cgrs *src)
{
 *dest = *src;
}
