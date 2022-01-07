; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-clps711x.c_clps711x_pwm_update_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-clps711x.c_clps711x_pwm_update_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clps711x_chip = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clps711x_chip*, i32, i32)* @clps711x_pwm_update_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clps711x_pwm_update_val(%struct.clps711x_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.clps711x_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.clps711x_chip* %0, %struct.clps711x_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  %12 = mul nsw i32 %11, 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %14 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %18 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @readl(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 15, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %33 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @writel(i32 %31, i32 %34)
  %36 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %37 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
