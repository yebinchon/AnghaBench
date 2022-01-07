
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MBS_COMMAND_COMPLETE ;
 unsigned int MBS_DIAG_ECHO_TEST_ERROR ;

__attribute__((used)) static inline bool qla2xxx_is_valid_mbs(unsigned int mbs)
{
 return MBS_COMMAND_COMPLETE <= mbs && mbs <= MBS_DIAG_ECHO_TEST_ERROR;
}
