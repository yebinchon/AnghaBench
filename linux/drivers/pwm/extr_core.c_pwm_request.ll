; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { i32 }

@MAX_PWMS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pwm_lock = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pwm_device* @pwm_request(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.pwm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MAX_PWMS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.pwm_device* @ERR_PTR(i32 %16)
  store %struct.pwm_device* %17, %struct.pwm_device** %3, align 8
  br label %41

18:                                               ; preds = %10
  %19 = call i32 @mutex_lock(i32* @pwm_lock)
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.pwm_device* @pwm_to_device(i32 %20)
  store %struct.pwm_device* %21, %struct.pwm_device** %6, align 8
  %22 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %23 = icmp ne %struct.pwm_device* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.pwm_device* @ERR_PTR(i32 %26)
  store %struct.pwm_device* %27, %struct.pwm_device** %6, align 8
  br label %38

28:                                               ; preds = %18
  %29 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @pwm_device_request(%struct.pwm_device* %29, i8* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.pwm_device* @ERR_PTR(i32 %35)
  store %struct.pwm_device* %36, %struct.pwm_device** %6, align 8
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %37, %24
  %39 = call i32 @mutex_unlock(i32* @pwm_lock)
  %40 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  store %struct.pwm_device* %40, %struct.pwm_device** %3, align 8
  br label %41

41:                                               ; preds = %38, %14
  %42 = load %struct.pwm_device*, %struct.pwm_device** %3, align 8
  ret %struct.pwm_device* %42
}

declare dso_local %struct.pwm_device* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.pwm_device* @pwm_to_device(i32) #1

declare dso_local i32 @pwm_device_request(%struct.pwm_device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
