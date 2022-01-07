; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_read_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_read_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i64*)* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_read_offset(%struct.rtc_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %8 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %16 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (i32, i64*)*, i32 (i32, i64*)** %18, align 8
  %20 = icmp ne i32 (i32, i64*)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %47

24:                                               ; preds = %14
  %25 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (i32, i64*)*, i32 (i32, i64*)** %31, align 8
  %33 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64*, i64** %5, align 8
  %38 = call i32 %32(i32 %36, i64* %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @trace_rtc_read_offset(i64 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %24, %21, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_rtc_read_offset(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
