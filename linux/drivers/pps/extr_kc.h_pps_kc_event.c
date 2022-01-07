
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_event_time {int dummy; } ;
struct pps_device {int dummy; } ;



__attribute__((used)) static inline void pps_kc_event(struct pps_device *pps,
  struct pps_event_time *ts, int event) {}
