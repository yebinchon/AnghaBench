
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chsc_debug_log_id ;
 int debug_event (int ,int,void*,int) ;

__attribute__((used)) static void CHSC_LOG_HEX(int level, void *data, int length)
{
 debug_event(chsc_debug_log_id, level, data, length);
}
