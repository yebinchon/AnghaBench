; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c___rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c___rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, %struct.rtc_wkalrm*)* }
%struct.rtc_wkalrm = type { %struct.rtc_time }
%struct.rtc_time = type { i32 }

@ETIME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_device*, %struct.rtc_wkalrm*)* @__rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rtc_set_alarm(%struct.rtc_device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rtc_time, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %11 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %10, i32 0, i32 0
  %12 = call i32 @rtc_valid_tm(%struct.rtc_time* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %77

17:                                               ; preds = %2
  %18 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %19 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %18, i32 0, i32 0
  %20 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %22 = call i32 @__rtc_read_time(%struct.rtc_device* %21, %struct.rtc_time* %6)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %77

27:                                               ; preds = %17
  %28 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %6)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ETIME, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %77

35:                                               ; preds = %27
  %36 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 0
  %39 = call i32 @rtc_subtract_offset(%struct.rtc_device* %36, %struct.rtc_time* %38)
  %40 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %70

47:                                               ; preds = %35
  %48 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (i32, %struct.rtc_wkalrm*)*, i32 (i32, %struct.rtc_wkalrm*)** %51, align 8
  %53 = icmp ne i32 (i32, %struct.rtc_wkalrm*)* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %69

57:                                               ; preds = %47
  %58 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (i32, %struct.rtc_wkalrm*)*, i32 (i32, %struct.rtc_wkalrm*)** %61, align 8
  %63 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %64 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %68 = call i32 %62(i32 %66, %struct.rtc_wkalrm* %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %57, %54
  br label %70

70:                                               ; preds = %69, %44
  %71 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %71, i32 0, i32 0
  %73 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %72)
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @trace_rtc_set_alarm(i64 %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %32, %25, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @__rtc_read_time(%struct.rtc_device*, %struct.rtc_time*) #1

declare dso_local i32 @rtc_subtract_offset(%struct.rtc_device*, %struct.rtc_time*) #1

declare dso_local i32 @trace_rtc_set_alarm(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
