; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rcar.c_rcar_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rcar.c_rcar_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pwm_chip = type { i32 }

@RCAR_PWMCNT = common dso_local global i32 0, align 4
@RCAR_PWMCNT_CYC0_MASK = common dso_local global i32 0, align 4
@RCAR_PWMCNT_PH0_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RCAR_PWMCR_EN0 = common dso_local global i32 0, align 4
@RCAR_PWMCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_pwm_chip*)* @rcar_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pwm_enable(%struct.rcar_pwm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_pwm_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_pwm_chip* %0, %struct.rcar_pwm_chip** %3, align 8
  %5 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %3, align 8
  %6 = load i32, i32* @RCAR_PWMCNT, align 4
  %7 = call i32 @rcar_pwm_read(%struct.rcar_pwm_chip* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RCAR_PWMCNT_CYC0_MASK, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @RCAR_PWMCNT_PH0_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %12
  %21 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %3, align 8
  %22 = load i32, i32* @RCAR_PWMCR_EN0, align 4
  %23 = load i32, i32* @RCAR_PWMCR_EN0, align 4
  %24 = load i32, i32* @RCAR_PWMCR, align 4
  %25 = call i32 @rcar_pwm_update(%struct.rcar_pwm_chip* %21, i32 %22, i32 %23, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @rcar_pwm_read(%struct.rcar_pwm_chip*, i32) #1

declare dso_local i32 @rcar_pwm_update(%struct.rcar_pwm_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
