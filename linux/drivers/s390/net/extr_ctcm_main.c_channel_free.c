
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {int fsm; int flags; int id; } ;


 int CHANNEL_FLAGS_INUSE ;
 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_INFO ;
 int CTC_STATE_IDLE ;
 int SETUP ;
 int fsm_newstate (int ,int ) ;

__attribute__((used)) static void channel_free(struct channel *ch)
{
 CTCM_DBF_TEXT_(SETUP, CTC_DBF_INFO, "%s(%s)", CTCM_FUNTAIL, ch->id);
 ch->flags &= ~CHANNEL_FLAGS_INUSE;
 fsm_newstate(ch->fsm, CTC_STATE_IDLE);
}
