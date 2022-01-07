; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp8788_bl.c_lp8788_pwm_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp8788_bl.c_lp8788_pwm_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_bl = type { %struct.pwm_device*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.pwm_device = type { i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { i32 }

@LP8788_DEV_BACKLIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can not get PWM device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp8788_bl*, i32, i32)* @lp8788_pwm_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp8788_pwm_ctrl(%struct.lp8788_bl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lp8788_bl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.pwm_device*, align 8
  store %struct.lp8788_bl* %0, %struct.lp8788_bl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.lp8788_bl*, %struct.lp8788_bl** %4, align 8
  %12 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %71

16:                                               ; preds = %3
  %17 = load %struct.lp8788_bl*, %struct.lp8788_bl** %4, align 8
  %18 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = udiv i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.lp8788_bl*, %struct.lp8788_bl** %4, align 8
  %28 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.device*, %struct.device** %30, align 8
  store %struct.device* %31, %struct.device** %9, align 8
  %32 = load %struct.lp8788_bl*, %struct.lp8788_bl** %4, align 8
  %33 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %32, i32 0, i32 0
  %34 = load %struct.pwm_device*, %struct.pwm_device** %33, align 8
  %35 = icmp ne %struct.pwm_device* %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %16
  %37 = load %struct.device*, %struct.device** %9, align 8
  %38 = load i32, i32* @LP8788_DEV_BACKLIGHT, align 4
  %39 = call %struct.pwm_device* @devm_pwm_get(%struct.device* %37, i32 %38)
  store %struct.pwm_device* %39, %struct.pwm_device** %10, align 8
  %40 = load %struct.pwm_device*, %struct.pwm_device** %10, align 8
  %41 = call i64 @IS_ERR(%struct.pwm_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.device*, %struct.device** %9, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %71

46:                                               ; preds = %36
  %47 = load %struct.pwm_device*, %struct.pwm_device** %10, align 8
  %48 = load %struct.lp8788_bl*, %struct.lp8788_bl** %4, align 8
  %49 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %48, i32 0, i32 0
  store %struct.pwm_device* %47, %struct.pwm_device** %49, align 8
  %50 = load %struct.pwm_device*, %struct.pwm_device** %10, align 8
  %51 = call i32 @pwm_apply_args(%struct.pwm_device* %50)
  br label %52

52:                                               ; preds = %46, %16
  %53 = load %struct.lp8788_bl*, %struct.lp8788_bl** %4, align 8
  %54 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %53, i32 0, i32 0
  %55 = load %struct.pwm_device*, %struct.pwm_device** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @pwm_config(%struct.pwm_device* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.lp8788_bl*, %struct.lp8788_bl** %4, align 8
  %63 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %62, i32 0, i32 0
  %64 = load %struct.pwm_device*, %struct.pwm_device** %63, align 8
  %65 = call i32 @pwm_enable(%struct.pwm_device* %64)
  br label %71

66:                                               ; preds = %52
  %67 = load %struct.lp8788_bl*, %struct.lp8788_bl** %4, align 8
  %68 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %67, i32 0, i32 0
  %69 = load %struct.pwm_device*, %struct.pwm_device** %68, align 8
  %70 = call i32 @pwm_disable(%struct.pwm_device* %69)
  br label %71

71:                                               ; preds = %15, %43, %66, %61
  ret void
}

declare dso_local %struct.pwm_device* @devm_pwm_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.pwm_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

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
