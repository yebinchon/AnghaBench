; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-renesas-tpu.c_tpu_pwm_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-renesas-tpu.c_tpu_pwm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.tpu_device = type { i32 }
%struct.tpu_pwm_device = type { i64, i32, i64, i64, i64, i32, %struct.tpu_device* }

@TPU_CHANNEL_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @tpu_pwm_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpu_pwm_request(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.tpu_device*, align 8
  %7 = alloca %struct.tpu_pwm_device*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %9 = call %struct.tpu_device* @to_tpu_device(%struct.pwm_chip* %8)
  store %struct.tpu_device* %9, %struct.tpu_device** %6, align 8
  %10 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %11 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TPU_CHANNEL_MAX, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.tpu_pwm_device* @kzalloc(i32 56, i32 %19)
  store %struct.tpu_pwm_device* %20, %struct.tpu_pwm_device** %7, align 8
  %21 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %7, align 8
  %22 = icmp eq %struct.tpu_pwm_device* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %18
  %27 = load %struct.tpu_device*, %struct.tpu_device** %6, align 8
  %28 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %7, align 8
  %29 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %28, i32 0, i32 6
  store %struct.tpu_device* %27, %struct.tpu_device** %29, align 8
  %30 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %31 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %7, align 8
  %34 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %36 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %7, align 8
  %37 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %7, align 8
  %39 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %7, align 8
  %41 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %7, align 8
  %43 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %7, align 8
  %45 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %44, i32 0, i32 1
  store i32 0, i32* %45, align 8
  %46 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %47 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %7, align 8
  %48 = call i32 @pwm_set_chip_data(%struct.pwm_device* %46, %struct.tpu_pwm_device* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %26, %23, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.tpu_device* @to_tpu_device(%struct.pwm_chip*) #1

declare dso_local %struct.tpu_pwm_device* @kzalloc(i32, i32) #1

declare dso_local i32 @pwm_set_chip_data(%struct.pwm_device*, %struct.tpu_pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
