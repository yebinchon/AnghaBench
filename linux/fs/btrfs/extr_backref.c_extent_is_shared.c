
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct share_check {int share_count; } ;


 int BACKREF_FOUND_SHARED ;

__attribute__((used)) static inline int extent_is_shared(struct share_check *sc)
{
 return (sc && sc->share_count > 1) ? BACKREF_FOUND_SHARED : 0;
}
