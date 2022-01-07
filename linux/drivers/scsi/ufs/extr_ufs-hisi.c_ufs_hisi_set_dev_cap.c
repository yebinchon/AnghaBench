
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_dev_params {int desired_working_mode; int hs_rate; int tx_pwr_hs; int rx_pwr_hs; int tx_pwr_pwm; int rx_pwr_pwm; int pwm_tx_gear; int pwm_rx_gear; int hs_tx_gear; int hs_rx_gear; int tx_lanes; int rx_lanes; } ;


 int UFS_HISI_LIMIT_DESIRED_MODE ;
 int UFS_HISI_LIMIT_HSGEAR_RX ;
 int UFS_HISI_LIMIT_HSGEAR_TX ;
 int UFS_HISI_LIMIT_HS_RATE ;
 int UFS_HISI_LIMIT_NUM_LANES_RX ;
 int UFS_HISI_LIMIT_NUM_LANES_TX ;
 int UFS_HISI_LIMIT_PWMGEAR_RX ;
 int UFS_HISI_LIMIT_PWMGEAR_TX ;
 int UFS_HISI_LIMIT_RX_PWR_HS ;
 int UFS_HISI_LIMIT_RX_PWR_PWM ;
 int UFS_HISI_LIMIT_TX_PWR_HS ;
 int UFS_HISI_LIMIT_TX_PWR_PWM ;

__attribute__((used)) static void ufs_hisi_set_dev_cap(struct ufs_dev_params *hisi_param)
{
 hisi_param->rx_lanes = UFS_HISI_LIMIT_NUM_LANES_RX;
 hisi_param->tx_lanes = UFS_HISI_LIMIT_NUM_LANES_TX;
 hisi_param->hs_rx_gear = UFS_HISI_LIMIT_HSGEAR_RX;
 hisi_param->hs_tx_gear = UFS_HISI_LIMIT_HSGEAR_TX;
 hisi_param->pwm_rx_gear = UFS_HISI_LIMIT_PWMGEAR_RX;
 hisi_param->pwm_tx_gear = UFS_HISI_LIMIT_PWMGEAR_TX;
 hisi_param->rx_pwr_pwm = UFS_HISI_LIMIT_RX_PWR_PWM;
 hisi_param->tx_pwr_pwm = UFS_HISI_LIMIT_TX_PWR_PWM;
 hisi_param->rx_pwr_hs = UFS_HISI_LIMIT_RX_PWR_HS;
 hisi_param->tx_pwr_hs = UFS_HISI_LIMIT_TX_PWR_HS;
 hisi_param->hs_rate = UFS_HISI_LIMIT_HS_RATE;
 hisi_param->desired_working_mode = UFS_HISI_LIMIT_DESIRED_MODE;
}
