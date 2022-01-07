
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_connected_mutex ;
 int g_once_init ;
 int mutex_init (int *) ;

__attribute__((used)) static void connected_init(void)
{
 if (!g_once_init) {
  mutex_init(&g_connected_mutex);
  g_once_init = 1;
 }
}
