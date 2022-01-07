; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_pinctrl_pm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_pinctrl_pm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.uniphier_pinctrl_priv = type { i32, %struct.uniphier_pinctrl_socdata* }
%struct.uniphier_pinctrl_socdata = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL = common dso_local global i32 0, align 4
@UNIPHIER_PINCTRL_DRV2CTRL_BASE = common dso_local global i32 0, align 4
@UNIPHIER_PINCTRL_DRV3CTRL_BASE = common dso_local global i32 0, align 4
@UNIPHIER_PINCTRL_DRVCTRL_BASE = common dso_local global i32 0, align 4
@UNIPHIER_PINCTRL_IECTRL_BASE = common dso_local global i32 0, align 4
@UNIPHIER_PINCTRL_PINMUX_BASE = common dso_local global i32 0, align 4
@UNIPHIER_PINCTRL_PUPDCTRL_BASE = common dso_local global i32 0, align 4
@UNIPHIER_PIN_IECTRL_NONE = common dso_local global i32 0, align 4
@UNIPHIER_PIN_PULL_DOWN = common dso_local global i32 0, align 4
@UNIPHIER_PIN_PULL_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.uniphier_pinctrl_priv*)* @uniphier_pinctrl_pm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_pinctrl_pm_init(%struct.device* %0, %struct.uniphier_pinctrl_priv* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.uniphier_pinctrl_priv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.uniphier_pinctrl_priv* %1, %struct.uniphier_pinctrl_priv** %4, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
