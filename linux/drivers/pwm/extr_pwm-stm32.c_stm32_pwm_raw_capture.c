
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct stm32_pwm {scalar_t__* capture; scalar_t__ max_arr; int regmap; TYPE_2__ chip; } ;
struct pwm_device {int hwpwm; TYPE_3__* chip; } ;
struct device {int dummy; } ;
typedef enum stm32_timers_dmas { ____Placeholder_stm32_timers_dmas } stm32_timers_dmas ;
struct TYPE_6__ {int npwm; } ;
struct TYPE_4__ {struct device* parent; } ;


 int STM32_TIMERS_DMA_CH1 ;
 int STM32_TIMERS_DMA_CH3 ;
 int TIM_CCER ;
 scalar_t__ TIM_CCER_CC12E ;
 scalar_t__ TIM_CCER_CC34E ;
 scalar_t__ TIM_CCR1 ;
 scalar_t__ TIM_CCR3 ;
 int TIM_CR1 ;
 scalar_t__ TIM_CR1_CEN ;
 int TIM_EGR ;
 scalar_t__ TIM_EGR_UG ;
 int regmap_update_bits (int ,int ,scalar_t__,scalar_t__) ;
 int stm32_timers_dma_burst_read (struct device*,scalar_t__*,int,scalar_t__,int,int,unsigned long) ;

__attribute__((used)) static int stm32_pwm_raw_capture(struct stm32_pwm *priv, struct pwm_device *pwm,
     unsigned long tmo_ms, u32 *raw_prd,
     u32 *raw_dty)
{
 struct device *parent = priv->chip.dev->parent;
 enum stm32_timers_dmas dma_id;
 u32 ccen, ccr;
 int ret;


 regmap_update_bits(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);
 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, TIM_CR1_CEN);


 dma_id = pwm->hwpwm < 2 ? STM32_TIMERS_DMA_CH1 : STM32_TIMERS_DMA_CH3;
 ccen = pwm->hwpwm < 2 ? TIM_CCER_CC12E : TIM_CCER_CC34E;
 ccr = pwm->hwpwm < 2 ? TIM_CCR1 : TIM_CCR3;
 regmap_update_bits(priv->regmap, TIM_CCER, ccen, ccen);







 ret = stm32_timers_dma_burst_read(parent, priv->capture, dma_id, ccr, 2,
       2, tmo_ms);
 if (ret)
  goto stop;


 if (priv->capture[0] <= priv->capture[2])
  *raw_prd = priv->capture[2] - priv->capture[0];
 else
  *raw_prd = priv->max_arr - priv->capture[0] + priv->capture[2];


 if (pwm->chip->npwm < 2)
  *raw_dty = 0;
 else if (priv->capture[0] <= priv->capture[3])
  *raw_dty = priv->capture[3] - priv->capture[0];
 else
  *raw_dty = priv->max_arr - priv->capture[0] + priv->capture[3];

 if (*raw_dty > *raw_prd) {






  *raw_dty -= *raw_prd;
 }

stop:
 regmap_update_bits(priv->regmap, TIM_CCER, ccen, 0);
 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);

 return ret;
}
