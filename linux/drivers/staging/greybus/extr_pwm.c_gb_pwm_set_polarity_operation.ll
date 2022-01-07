; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_pwm.c_gb_pwm_set_polarity_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_pwm.c_gb_pwm_set_polarity_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_pwm_chip = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gb_pwm_polarity_request = type { i64, i64 }
%struct.gbphy_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GB_PWM_TYPE_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_pwm_chip*, i64, i64)* @gb_pwm_set_polarity_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_pwm_set_polarity_operation(%struct.gb_pwm_chip* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_pwm_chip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gb_pwm_polarity_request, align 8
  %9 = alloca %struct.gbphy_device*, align 8
  %10 = alloca i32, align 4
  store %struct.gb_pwm_chip* %0, %struct.gb_pwm_chip** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %5, align 8
  %13 = getelementptr inbounds %struct.gb_pwm_chip, %struct.gb_pwm_chip* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.gb_pwm_polarity_request, %struct.gb_pwm_polarity_request* %8, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.gb_pwm_polarity_request, %struct.gb_pwm_polarity_request* %8, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %5, align 8
  %25 = getelementptr inbounds %struct.gb_pwm_chip, %struct.gb_pwm_chip* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.gbphy_device* @to_gbphy_dev(i32 %27)
  store %struct.gbphy_device* %28, %struct.gbphy_device** %9, align 8
  %29 = load %struct.gbphy_device*, %struct.gbphy_device** %9, align 8
  %30 = call i32 @gbphy_runtime_get_sync(%struct.gbphy_device* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %44

35:                                               ; preds = %19
  %36 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %5, align 8
  %37 = getelementptr inbounds %struct.gb_pwm_chip, %struct.gb_pwm_chip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GB_PWM_TYPE_POLARITY, align 4
  %40 = call i32 @gb_operation_sync(i32 %38, i32 %39, %struct.gb_pwm_polarity_request* %8, i32 16, i32* null, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.gbphy_device*, %struct.gbphy_device** %9, align 8
  %42 = call i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device* %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %35, %33, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.gbphy_device* @to_gbphy_dev(i32) #1

declare dso_local i32 @gbphy_runtime_get_sync(%struct.gbphy_device*) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_pwm_polarity_request*, i32, i32*, i32) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
