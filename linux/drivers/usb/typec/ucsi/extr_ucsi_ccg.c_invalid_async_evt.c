
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCG_EVENT_MAX ;
 int EVENT_INDEX ;

__attribute__((used)) static inline bool invalid_async_evt(int code)
{
 return (code >= CCG_EVENT_MAX) || (code < EVENT_INDEX);
}
