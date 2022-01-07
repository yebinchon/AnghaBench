; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_read_alarm_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_read_alarm_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, %struct.rtc_wkalrm*)* }
%struct.rtc_wkalrm = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_device*, %struct.rtc_wkalrm*)* @rtc_read_alarm_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_read_alarm_internal(%struct.rtc_device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %7 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %8 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock_interruptible(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %86

14:                                               ; preds = %2
  %15 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %16 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %76

22:                                               ; preds = %14
  %23 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (i32, %struct.rtc_wkalrm*)*, i32 (i32, %struct.rtc_wkalrm*)** %26, align 8
  %28 = icmp ne i32 (i32, %struct.rtc_wkalrm*)* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %75

32:                                               ; preds = %22
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  %40 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 -1, i32* %42, align 4
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 -1, i32* %45, align 8
  %46 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  store i32 -1, i32* %48, align 4
  %49 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  store i32 -1, i32* %51, align 8
  %52 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  store i32 -1, i32* %54, align 4
  %55 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 6
  store i32 -1, i32* %57, align 8
  %58 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 7
  store i32 -1, i32* %60, align 4
  %61 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 8
  store i32 -1, i32* %63, align 8
  %64 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %65 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (i32, %struct.rtc_wkalrm*)*, i32 (i32, %struct.rtc_wkalrm*)** %67, align 8
  %69 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %70 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %74 = call i32 %68(i32 %72, %struct.rtc_wkalrm* %73)
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %32, %29
  br label %76

76:                                               ; preds = %75, %19
  %77 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %78 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %81 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %80, i32 0, i32 0
  %82 = call i32 @rtc_tm_to_time64(%struct.TYPE_6__* %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @trace_rtc_read_alarm(i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %76, %12
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_rtc_read_alarm(i32, i32) #1

declare dso_local i32 @rtc_tm_to_time64(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
