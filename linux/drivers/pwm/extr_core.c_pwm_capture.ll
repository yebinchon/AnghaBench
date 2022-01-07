; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.pwm_device*, %struct.pwm_capture*, i64)* }
%struct.pwm_capture = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@pwm_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwm_capture(%struct.pwm_device* %0, %struct.pwm_capture* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_capture*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pwm_device* %0, %struct.pwm_device** %5, align 8
  store %struct.pwm_capture* %1, %struct.pwm_capture** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %10 = icmp ne %struct.pwm_device* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %13 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %11
  %22 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %23 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_4__*, %struct.pwm_device*, %struct.pwm_capture*, i64)*, i32 (%struct.TYPE_4__*, %struct.pwm_device*, %struct.pwm_capture*, i64)** %27, align 8
  %29 = icmp ne i32 (%struct.TYPE_4__*, %struct.pwm_device*, %struct.pwm_capture*, i64)* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %51

33:                                               ; preds = %21
  %34 = call i32 @mutex_lock(i32* @pwm_lock)
  %35 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %36 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_4__*, %struct.pwm_device*, %struct.pwm_capture*, i64)*, i32 (%struct.TYPE_4__*, %struct.pwm_device*, %struct.pwm_capture*, i64)** %40, align 8
  %42 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %43 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %46 = load %struct.pwm_capture*, %struct.pwm_capture** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 %41(%struct.TYPE_4__* %44, %struct.pwm_device* %45, %struct.pwm_capture* %46, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = call i32 @mutex_unlock(i32* @pwm_lock)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %33, %30, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
