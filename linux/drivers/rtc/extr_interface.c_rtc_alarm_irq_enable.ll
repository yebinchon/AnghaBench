; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, i32)* }
%struct.TYPE_7__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_alarm_irq_enable(%struct.rtc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store i32 %1, i32* %5, align 4
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
  br label %79

14:                                               ; preds = %2
  %15 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %16 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %26 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %26, i32 0, i32 3
  %28 = call i32 @rtc_timer_enqueue(%struct.rtc_device* %25, %struct.TYPE_7__* %27)
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %21
  %30 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %31 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %31, i32 0, i32 3
  %33 = call i32 @rtc_timer_remove(%struct.rtc_device* %30, %struct.TYPE_7__* %32)
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %14
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %71

39:                                               ; preds = %35
  %40 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %70

47:                                               ; preds = %39
  %48 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32 (i32, i32)*, i32 (i32, i32)** %51, align 8
  %53 = icmp ne i32 (i32, i32)* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %69

57:                                               ; preds = %47
  %58 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32 (i32, i32)*, i32 (i32, i32)** %61, align 8
  %63 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %64 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 %62(i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %57, %54
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %38
  %72 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %73 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @trace_rtc_alarm_irq_enable(i32 %75, i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %71, %12
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @rtc_timer_enqueue(%struct.rtc_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @rtc_timer_remove(%struct.rtc_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_rtc_alarm_irq_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
