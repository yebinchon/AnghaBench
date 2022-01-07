
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maven_resync (void*) ;

__attribute__((used)) static int maven_out_start(void* md) {
 return maven_resync(md);
}
