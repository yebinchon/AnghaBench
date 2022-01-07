; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/brcmstb/pm/extr_pm-arm.c_brcmstb_pm_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/brcmstb/pm/extr_pm-arm.c_brcmstb_pm_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@ctrl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AON_REG_MAGIC_FLAGS = common dso_local global i64 0, align 8
@AON_CTRL_PM_CPU_WAIT_COUNT = common dso_local global i64 0, align 8
@PWRDWN_SEQ_POWERDOWN_PLL = common dso_local global i32 0, align 4
@SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT = common dso_local global i32 0, align 4
@SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK = common dso_local global i32 0, align 4
@M1_PM_COLD_CONFIG = common dso_local global i32 0, align 4
@PM_COLD_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @brcmstb_pm_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmstb_pm_poweroff() #0 {
  %1 = call i32 (...) @brcmstb_pm_handshake()
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctrl, i32 0, i32 2), align 8
  %3 = load i64, i64* @AON_REG_MAGIC_FLAGS, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i32 @writel_relaxed(i32 0, i64 %4)
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctrl, i32 0, i32 2), align 8
  %7 = load i64, i64* @AON_REG_MAGIC_FLAGS, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl_relaxed(i64 %8)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctrl, i32 0, i32 1), align 8
  %11 = load i64, i64* @AON_CTRL_PM_CPU_WAIT_COUNT, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 16, i64 %12)
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctrl, i32 0, i32 1), align 8
  %15 = load i64, i64* @AON_CTRL_PM_CPU_WAIT_COUNT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctrl, i32 0, i32 0), align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %30

20:                                               ; preds = %0
  %21 = load i32, i32* @PWRDWN_SEQ_POWERDOWN_PLL, align 4
  %22 = load i32, i32* @SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = call i32 @shimphy_set(i32 %23, i32 %25)
  %27 = call i32 @ddr_ctrl_set(i32 0)
  %28 = load i32, i32* @M1_PM_COLD_CONFIG, align 4
  %29 = call i32 @brcmstb_do_pmsm_power_down(i32 %28, i32 1)
  br label %33

30:                                               ; preds = %0
  %31 = load i32, i32* @PM_COLD_CONFIG, align 4
  %32 = call i32 @brcmstb_do_pmsm_power_down(i32 %31, i32 0)
  br label %33

33:                                               ; preds = %30, %20
  ret void
}

declare dso_local i32 @brcmstb_pm_handshake(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @shimphy_set(i32, i32) #1

declare dso_local i32 @ddr_ctrl_set(i32) #1

declare dso_local i32 @brcmstb_do_pmsm_power_down(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
