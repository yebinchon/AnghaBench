; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.sti_pwm_chip = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*)* @sti_pwm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_pwm_disable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.sti_pwm_chip*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %6 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %7 = call %struct.sti_pwm_chip* @to_sti_pwmchip(%struct.pwm_chip* %6)
  store %struct.sti_pwm_chip* %7, %struct.sti_pwm_chip** %5, align 8
  %8 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %9 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %12 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %18 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %22 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regmap_field_write(i32 %23, i32 0)
  %25 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %26 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_disable(i32 %27)
  %29 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %30 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_disable(i32 %31)
  %33 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %34 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %36

36:                                               ; preds = %20, %16
  ret void
}

declare dso_local %struct.sti_pwm_chip* @to_sti_pwmchip(%struct.pwm_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
