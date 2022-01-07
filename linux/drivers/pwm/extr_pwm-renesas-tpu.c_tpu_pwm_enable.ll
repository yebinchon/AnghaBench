; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-renesas-tpu.c_tpu_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-renesas-tpu.c_tpu_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.tpu_pwm_device = type { i64, i64 }

@TPU_PIN_ACTIVE = common dso_local global i32 0, align 4
@TPU_PIN_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @tpu_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpu_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.tpu_pwm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %8 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %9 = call %struct.tpu_pwm_device* @pwm_get_chip_data(%struct.pwm_device* %8)
  store %struct.tpu_pwm_device* %9, %struct.tpu_pwm_device** %6, align 8
  %10 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %6, align 8
  %11 = call i32 @tpu_pwm_timer_start(%struct.tpu_pwm_device* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %6, align 8
  %18 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %6, align 8
  %23 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %6, align 8
  %26 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %21, %16
  %30 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %6, align 8
  %31 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %6, align 8
  %32 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @TPU_PIN_ACTIVE, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @TPU_PIN_INACTIVE, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 @tpu_pwm_set_pin(%struct.tpu_pwm_device* %30, i32 %40)
  %42 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %6, align 8
  %43 = call i32 @tpu_pwm_timer_stop(%struct.tpu_pwm_device* %42)
  br label %44

44:                                               ; preds = %39, %21
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.tpu_pwm_device* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i32 @tpu_pwm_timer_start(%struct.tpu_pwm_device*) #1

declare dso_local i32 @tpu_pwm_set_pin(%struct.tpu_pwm_device*, i32) #1

declare dso_local i32 @tpu_pwm_timer_stop(%struct.tpu_pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
