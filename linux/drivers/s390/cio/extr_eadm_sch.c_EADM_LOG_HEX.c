
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_event (int ,int,void*,int) ;
 int eadm_debug ;

__attribute__((used)) static void EADM_LOG_HEX(int level, void *data, int length)
{
 debug_event(eadm_debug, level, data, length);
}
