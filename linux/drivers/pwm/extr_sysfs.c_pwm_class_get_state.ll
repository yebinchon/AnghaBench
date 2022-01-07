; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_pwm_class_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_pwm_class_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_export = type { i32 }
%struct.device = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32 }

@PWMF_EXPORTED = common dso_local global i32 0, align 4
@pwm_unexport_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pwm_export* (%struct.device*, %struct.pwm_device*, %struct.pwm_state*)* @pwm_class_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pwm_export* @pwm_class_get_state(%struct.device* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_export*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.pwm_export*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %10 = load i32, i32* @PWMF_EXPORTED, align 4
  %11 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %12 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %11, i32 0, i32 0
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.pwm_export* null, %struct.pwm_export** %4, align 8
  br label %36

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %19 = load i32, i32* @pwm_unexport_match, align 4
  %20 = call %struct.device* @device_find_child(%struct.device* %17, %struct.pwm_device* %18, i32 %19)
  store %struct.device* %20, %struct.device** %8, align 8
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = icmp ne %struct.device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store %struct.pwm_export* null, %struct.pwm_export** %4, align 8
  br label %36

24:                                               ; preds = %16
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = call %struct.pwm_export* @child_to_pwm_export(%struct.device* %25)
  store %struct.pwm_export* %26, %struct.pwm_export** %9, align 8
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = call i32 @put_device(%struct.device* %27)
  %29 = load %struct.pwm_export*, %struct.pwm_export** %9, align 8
  %30 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %33 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %34 = call i32 @pwm_get_state(%struct.pwm_device* %32, %struct.pwm_state* %33)
  %35 = load %struct.pwm_export*, %struct.pwm_export** %9, align 8
  store %struct.pwm_export* %35, %struct.pwm_export** %4, align 8
  br label %36

36:                                               ; preds = %24, %23, %15
  %37 = load %struct.pwm_export*, %struct.pwm_export** %4, align 8
  ret %struct.pwm_export* %37
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.device* @device_find_child(%struct.device*, %struct.pwm_device*, i32) #1

declare dso_local %struct.pwm_export* @child_to_pwm_export(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwm_get_state(%struct.pwm_device*, %struct.pwm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
