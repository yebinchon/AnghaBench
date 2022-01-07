; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_pwm.c_gb_pwm_enable_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_pwm.c_gb_pwm_enable_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_pwm_chip = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gb_pwm_enable_request = type { i64 }
%struct.gbphy_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GB_PWM_TYPE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_pwm_chip*, i64)* @gb_pwm_enable_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_pwm_enable_operation(%struct.gb_pwm_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_pwm_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gb_pwm_enable_request, align 8
  %7 = alloca %struct.gbphy_device*, align 8
  %8 = alloca i32, align 4
  store %struct.gb_pwm_chip* %0, %struct.gb_pwm_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %4, align 8
  %11 = getelementptr inbounds %struct.gb_pwm_chip, %struct.gb_pwm_chip* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.gb_pwm_enable_request, %struct.gb_pwm_enable_request* %6, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %4, align 8
  %21 = getelementptr inbounds %struct.gb_pwm_chip, %struct.gb_pwm_chip* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.gbphy_device* @to_gbphy_dev(i32 %23)
  store %struct.gbphy_device* %24, %struct.gbphy_device** %7, align 8
  %25 = load %struct.gbphy_device*, %struct.gbphy_device** %7, align 8
  %26 = call i32 @gbphy_runtime_get_sync(%struct.gbphy_device* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %17
  %32 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %4, align 8
  %33 = getelementptr inbounds %struct.gb_pwm_chip, %struct.gb_pwm_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GB_PWM_TYPE_ENABLE, align 4
  %36 = call i32 @gb_operation_sync(i32 %34, i32 %35, %struct.gb_pwm_enable_request* %6, i32 8, i32* null, i32 0)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.gbphy_device*, %struct.gbphy_device** %7, align 8
  %41 = call i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device* %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %29, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.gbphy_device* @to_gbphy_dev(i32) #1

declare dso_local i32 @gbphy_runtime_get_sync(%struct.gbphy_device*) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_pwm_enable_request*, i32, i32*, i32) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
