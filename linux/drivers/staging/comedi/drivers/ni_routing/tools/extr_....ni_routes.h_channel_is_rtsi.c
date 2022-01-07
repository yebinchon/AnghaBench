
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRIGGER_LINE (int) ;

__attribute__((used)) static inline bool channel_is_rtsi(int channel)
{
 return TRIGGER_LINE(0) <= channel && channel <= TRIGGER_LINE(-1);
}
