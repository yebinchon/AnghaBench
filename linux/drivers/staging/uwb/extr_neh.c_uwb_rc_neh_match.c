
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rceb {scalar_t__ bEventType; scalar_t__ wEvent; scalar_t__ bEventContext; } ;
struct uwb_rc_neh {scalar_t__ evt_type; scalar_t__ evt; scalar_t__ context; } ;



__attribute__((used)) static bool uwb_rc_neh_match(struct uwb_rc_neh *neh, const struct uwb_rceb *rceb)
{
 return neh->evt_type == rceb->bEventType
  && neh->evt == rceb->wEvent
  && neh->context == rceb->bEventContext;
}
