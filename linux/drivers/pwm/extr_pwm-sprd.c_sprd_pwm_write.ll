; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sprd.c_sprd_pwm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sprd.c_sprd_pwm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_pwm_chip = type { i32 }

@SPRD_PWM_REGS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_pwm_chip*, i32, i32, i32)* @sprd_pwm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_pwm_write(%struct.sprd_pwm_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sprd_pwm_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sprd_pwm_chip* %0, %struct.sprd_pwm_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SPRD_PWM_REGS_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = add nsw i32 %10, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %5, align 8
  %17 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @writel_relaxed(i32 %15, i32 %20)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
