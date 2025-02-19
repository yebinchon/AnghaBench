; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm-iproc.c_iproc_pwmc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm-iproc.c_iproc_pwmc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pwmc = type { i64 }

@IPROC_PWM_CTRL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iproc_pwmc*, i32)* @iproc_pwmc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_pwmc_disable(%struct.iproc_pwmc* %0, i32 %1) #0 {
  %3 = alloca %struct.iproc_pwmc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iproc_pwmc* %0, %struct.iproc_pwmc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %3, align 8
  %7 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IPROC_PWM_CTRL_OFFSET, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @IPROC_PWM_CTRL_EN_SHIFT(i32 %12)
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %3, align 8
  %20 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPROC_PWM_CTRL_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = call i32 @ndelay(i32 400)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @IPROC_PWM_CTRL_EN_SHIFT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ndelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
