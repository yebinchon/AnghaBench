
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qpnp_tm_chip {int thresh; int stage; scalar_t__ subtype; int initialized; int lock; scalar_t__ temp; } ;


 int ALARM_CTRL_FORCE_ENABLE ;
 scalar_t__ DEFAULT_TEMP ;
 int QPNP_TM_REG_ALARM_CTRL ;
 int QPNP_TM_REG_SHUTDOWN_CTRL1 ;
 scalar_t__ QPNP_TM_SUBTYPE_GEN1 ;
 int SHUTDOWN_CTRL1_THRESHOLD_MASK ;
 unsigned int TEMP_STAGE_STEP ;
 scalar_t__ TEMP_THRESH_MIN ;
 unsigned int TEMP_THRESH_STEP ;
 unsigned int* alarm_state_map ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qpnp_tm_get_critical_trip_temp (struct qpnp_tm_chip*) ;
 int qpnp_tm_get_temp_stage (struct qpnp_tm_chip*) ;
 int qpnp_tm_read (struct qpnp_tm_chip*,int ,int*) ;
 int qpnp_tm_update_critical_trip_temp (struct qpnp_tm_chip*,int) ;
 int qpnp_tm_write (struct qpnp_tm_chip*,int ,int) ;

__attribute__((used)) static int qpnp_tm_init(struct qpnp_tm_chip *chip)
{
 unsigned int stage;
 int ret;
 u8 reg = 0;
 int crit_temp;

 mutex_lock(&chip->lock);

 ret = qpnp_tm_read(chip, QPNP_TM_REG_SHUTDOWN_CTRL1, &reg);
 if (ret < 0)
  goto out;

 chip->thresh = reg & SHUTDOWN_CTRL1_THRESHOLD_MASK;
 chip->temp = DEFAULT_TEMP;

 ret = qpnp_tm_get_temp_stage(chip);
 if (ret < 0)
  goto out;
 chip->stage = ret;

 stage = chip->subtype == QPNP_TM_SUBTYPE_GEN1
  ? chip->stage : alarm_state_map[chip->stage];

 if (stage)
  chip->temp = chip->thresh * TEMP_THRESH_STEP +
        (stage - 1) * TEMP_STAGE_STEP +
        TEMP_THRESH_MIN;

 crit_temp = qpnp_tm_get_critical_trip_temp(chip);
 ret = qpnp_tm_update_critical_trip_temp(chip, crit_temp);
 if (ret < 0)
  goto out;


 reg = ALARM_CTRL_FORCE_ENABLE;
 ret = qpnp_tm_write(chip, QPNP_TM_REG_ALARM_CTRL, reg);

 chip->initialized = 1;

out:
 mutex_unlock(&chip->lock);
 return ret;
}
