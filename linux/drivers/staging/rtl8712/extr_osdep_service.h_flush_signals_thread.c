
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int flush_signals (int ) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static inline void flush_signals_thread(void)
{
 if (signal_pending(current))
  flush_signals(current);
}
