; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_initialize_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_initialize_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.rtc_wkalrm = type { i64, %struct.rtc_time }
%struct.rtc_time = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_initialize_alarm(%struct.rtc_device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtc_time, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %8 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %9 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 1
  %10 = call i32 @rtc_valid_tm(%struct.rtc_time* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %17 = call i32 @rtc_read_time(%struct.rtc_device* %16, %struct.rtc_time* %7)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %75

22:                                               ; preds = %15
  %23 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock_interruptible(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %75

30:                                               ; preds = %22
  %31 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @rtc_tm_to_ktime(i32 %34)
  %36 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 %35, i64* %39, align 8
  %40 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @rtc_tm_to_ktime(i32 %49)
  %51 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %50, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %47
  %58 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %62 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %61, i32 0, i32 2
  %63 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %64 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = call i32 @timerqueue_add(i32* %62, %struct.TYPE_4__* %65)
  %67 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %68 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %67, i32 0, i32 1
  %69 = call i32 @trace_rtc_timer_enqueue(%struct.TYPE_3__* %68)
  br label %70

70:                                               ; preds = %57, %47, %30
  %71 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %72 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %28, %20, %13
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

declare dso_local i32 @rtc_read_time(%struct.rtc_device*, %struct.rtc_time*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @rtc_tm_to_ktime(i32) #1

declare dso_local i32 @timerqueue_add(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @trace_rtc_timer_enqueue(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
