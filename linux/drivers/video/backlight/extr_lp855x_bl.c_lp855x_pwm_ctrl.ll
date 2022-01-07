; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_pwm_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_pwm_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp855x = type { %struct.pwm_device*, i32, i32, %struct.TYPE_2__* }
%struct.pwm_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp855x*, i32, i32)* @lp855x_pwm_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp855x_pwm_ctrl(%struct.lp855x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lp855x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pwm_device*, align 8
  store %struct.lp855x* %0, %struct.lp855x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.lp855x*, %struct.lp855x** %4, align 8
  %11 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = udiv i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.lp855x*, %struct.lp855x** %4, align 8
  %21 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %20, i32 0, i32 0
  %22 = load %struct.pwm_device*, %struct.pwm_device** %21, align 8
  %23 = icmp ne %struct.pwm_device* %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %3
  %25 = load %struct.lp855x*, %struct.lp855x** %4, align 8
  %26 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lp855x*, %struct.lp855x** %4, align 8
  %29 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.pwm_device* @devm_pwm_get(i32 %27, i32 %30)
  store %struct.pwm_device* %31, %struct.pwm_device** %9, align 8
  %32 = load %struct.pwm_device*, %struct.pwm_device** %9, align 8
  %33 = call i64 @IS_ERR(%struct.pwm_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %61

36:                                               ; preds = %24
  %37 = load %struct.pwm_device*, %struct.pwm_device** %9, align 8
  %38 = load %struct.lp855x*, %struct.lp855x** %4, align 8
  %39 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %38, i32 0, i32 0
  store %struct.pwm_device* %37, %struct.pwm_device** %39, align 8
  %40 = load %struct.pwm_device*, %struct.pwm_device** %9, align 8
  %41 = call i32 @pwm_apply_args(%struct.pwm_device* %40)
  br label %42

42:                                               ; preds = %36, %3
  %43 = load %struct.lp855x*, %struct.lp855x** %4, align 8
  %44 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %43, i32 0, i32 0
  %45 = load %struct.pwm_device*, %struct.pwm_device** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @pwm_config(%struct.pwm_device* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.lp855x*, %struct.lp855x** %4, align 8
  %53 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %52, i32 0, i32 0
  %54 = load %struct.pwm_device*, %struct.pwm_device** %53, align 8
  %55 = call i32 @pwm_enable(%struct.pwm_device* %54)
  br label %61

56:                                               ; preds = %42
  %57 = load %struct.lp855x*, %struct.lp855x** %4, align 8
  %58 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %57, i32 0, i32 0
  %59 = load %struct.pwm_device*, %struct.pwm_device** %58, align 8
  %60 = call i32 @pwm_disable(%struct.pwm_device* %59)
  br label %61

61:                                               ; preds = %35, %56, %51
  ret void
}

declare dso_local %struct.pwm_device* @devm_pwm_get(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.pwm_device*) #1

declare dso_local i32 @pwm_apply_args(%struct.pwm_device*) #1

declare dso_local i32 @pwm_config(%struct.pwm_device*, i32, i32) #1

declare dso_local i32 @pwm_enable(%struct.pwm_device*) #1

declare dso_local i32 @pwm_disable(%struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
