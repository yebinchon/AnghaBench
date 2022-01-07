; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_pwm_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_pwm_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3630a_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm3630a_chip*, i32, i32)* @lm3630a_pwm_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm3630a_pwm_ctrl(%struct.lm3630a_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lm3630a_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lm3630a_chip* %0, %struct.lm3630a_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %10 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = udiv i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %20 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @pwm_config(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %29 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pwm_enable(i32 %30)
  br label %37

32:                                               ; preds = %3
  %33 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %34 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pwm_disable(i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @pwm_config(i32, i32, i32) #1

declare dso_local i32 @pwm_enable(i32) #1

declare dso_local i32 @pwm_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
