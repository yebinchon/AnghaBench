; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-samsung.c_pwm_samsung_set_divisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-samsung.c_pwm_samsung_set_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pwm_chip = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@samsung_pwm_lock = common dso_local global i32 0, align 4
@REG_TCFG1 = common dso_local global i64 0, align 8
@TCFG1_MUX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_pwm_chip*, i32, i32)* @pwm_samsung_set_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_samsung_set_divisor(%struct.samsung_pwm_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.samsung_pwm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.samsung_pwm_chip* %0, %struct.samsung_pwm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @TCFG1_SHIFT(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @fls(i32 %13)
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %4, align 8
  %17 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %15, %19
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* @samsung_pwm_lock, i64 %21)
  %23 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %4, align 8
  %24 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REG_TCFG1, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @TCFG1_MUX_MASK, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %4, align 8
  %42 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @REG_TCFG1, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* @samsung_pwm_lock, i64 %47)
  ret void
}

declare dso_local i32 @TCFG1_SHIFT(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
