; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rcar.c_rcar_pwm_set_clock_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rcar.c_rcar_pwm_set_clock_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pwm_chip = type { i32 }

@RCAR_PWMCR = common dso_local global i32 0, align 4
@RCAR_PWMCR_CCMD = common dso_local global i32 0, align 4
@RCAR_PWMCR_CC0_MASK = common dso_local global i32 0, align 4
@RCAR_PWMCR_CC0_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_pwm_chip*, i32)* @rcar_pwm_set_clock_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_pwm_set_clock_control(%struct.rcar_pwm_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.rcar_pwm_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rcar_pwm_chip* %0, %struct.rcar_pwm_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %3, align 8
  %7 = load i32, i32* @RCAR_PWMCR, align 4
  %8 = call i32 @rcar_pwm_read(%struct.rcar_pwm_chip* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @RCAR_PWMCR_CCMD, align 4
  %10 = load i32, i32* @RCAR_PWMCR_CC0_MASK, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @RCAR_PWMCR_CCMD, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %4, align 4
  %24 = lshr i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @RCAR_PWMCR_CC0_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @RCAR_PWMCR, align 4
  %33 = call i32 @rcar_pwm_write(%struct.rcar_pwm_chip* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @rcar_pwm_read(%struct.rcar_pwm_chip*, i32) #1

declare dso_local i32 @rcar_pwm_write(%struct.rcar_pwm_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
