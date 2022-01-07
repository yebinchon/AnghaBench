; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_update_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_update_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rtc_time = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_update_irq_enable(%struct.rtc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtc_time, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %11 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock_interruptible(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %64

25:                                               ; preds = %17
  %26 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %64

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %38 = call i32 @__rtc_read_time(%struct.rtc_device* %37, %struct.rtc_time* %7)
  %39 = call i8* @ktime_set(i32 1, i32 0)
  store i8* %39, i8** %9, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @rtc_tm_to_ktime(i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @ktime_add(i8* %43, i8* %44)
  %46 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %47 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = call i8* @ktime_set(i32 1, i32 0)
  %51 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %55 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %56 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %55, i32 0, i32 1
  %57 = call i32 @rtc_timer_enqueue(%struct.rtc_device* %54, %struct.TYPE_5__* %56)
  store i32 %57, i32* %6, align 4
  br label %63

58:                                               ; preds = %33
  %59 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %60 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %61 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %60, i32 0, i32 1
  %62 = call i32 @rtc_timer_remove(%struct.rtc_device* %59, %struct.TYPE_5__* %61)
  br label %63

63:                                               ; preds = %58, %36
  br label %64

64:                                               ; preds = %63, %30, %24
  %65 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %66 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @__rtc_read_time(%struct.rtc_device*, %struct.rtc_time*) #1

declare dso_local i8* @ktime_set(i32, i32) #1

declare dso_local i8* @rtc_tm_to_ktime(i32) #1

declare dso_local i32 @ktime_add(i8*, i8*) #1

declare dso_local i32 @rtc_timer_enqueue(%struct.rtc_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @rtc_timer_remove(%struct.rtc_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
