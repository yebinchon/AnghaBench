; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_timer_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_timer_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rtc_timer = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.timerqueue_node = type { i64 }
%struct.rtc_time = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }

@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_device*, %struct.rtc_timer*)* @rtc_timer_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_timer_enqueue(%struct.rtc_device* %0, %struct.rtc_timer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.rtc_timer*, align 8
  %6 = alloca %struct.timerqueue_node*, align 8
  %7 = alloca %struct.rtc_time, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtc_wkalrm, align 4
  %10 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store %struct.rtc_timer* %1, %struct.rtc_timer** %5, align 8
  %11 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %12 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %11, i32 0, i32 0
  %13 = call %struct.timerqueue_node* @timerqueue_getnext(i32* %12)
  store %struct.timerqueue_node* %13, %struct.timerqueue_node** %6, align 8
  %14 = load %struct.rtc_timer*, %struct.rtc_timer** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %17 = call i32 @__rtc_read_time(%struct.rtc_device* %16, %struct.rtc_time* %7)
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @rtc_tm_to_ktime(i32 %19)
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %31, %2
  %22 = load %struct.timerqueue_node*, %struct.timerqueue_node** %6, align 8
  %23 = icmp ne %struct.timerqueue_node* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.timerqueue_node*, %struct.timerqueue_node** %6, align 8
  %26 = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %34

31:                                               ; preds = %24
  %32 = load %struct.timerqueue_node*, %struct.timerqueue_node** %6, align 8
  %33 = call %struct.timerqueue_node* @timerqueue_iterate_next(%struct.timerqueue_node* %32)
  store %struct.timerqueue_node* %33, %struct.timerqueue_node** %6, align 8
  br label %21

34:                                               ; preds = %30, %21
  %35 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %35, i32 0, i32 0
  %37 = load %struct.rtc_timer*, %struct.rtc_timer** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %37, i32 0, i32 1
  %39 = call i32 @timerqueue_add(i32* %36, %struct.TYPE_5__* %38)
  %40 = load %struct.rtc_timer*, %struct.rtc_timer** %5, align 8
  %41 = call i32 @trace_rtc_timer_enqueue(%struct.rtc_timer* %40)
  %42 = load %struct.timerqueue_node*, %struct.timerqueue_node** %6, align 8
  %43 = icmp ne %struct.timerqueue_node* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = load %struct.rtc_timer*, %struct.rtc_timer** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.timerqueue_node*, %struct.timerqueue_node** %6, align 8
  %50 = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @ktime_before(i32 %48, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %44, %34
  %55 = load %struct.rtc_timer*, %struct.rtc_timer** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rtc_ktime_to_tm(i32 %58)
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %63 = call i32 @__rtc_set_alarm(%struct.rtc_device* %62, %struct.rtc_wkalrm* %9)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @ETIME, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %54
  %69 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %70 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pm_stay_awake(i32 %72)
  %74 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %75 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %74, i32 0, i32 1
  %76 = call i32 @schedule_work(i32* %75)
  br label %92

77:                                               ; preds = %54
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %82 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %81, i32 0, i32 0
  %83 = load %struct.rtc_timer*, %struct.rtc_timer** %5, align 8
  %84 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %83, i32 0, i32 1
  %85 = call i32 @timerqueue_del(i32* %82, %struct.TYPE_5__* %84)
  %86 = load %struct.rtc_timer*, %struct.rtc_timer** %5, align 8
  %87 = call i32 @trace_rtc_timer_dequeue(%struct.rtc_timer* %86)
  %88 = load %struct.rtc_timer*, %struct.rtc_timer** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %3, align 4
  br label %94

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %68
  br label %93

93:                                               ; preds = %92, %44
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %80
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.timerqueue_node* @timerqueue_getnext(i32*) #1

declare dso_local i32 @__rtc_read_time(%struct.rtc_device*, %struct.rtc_time*) #1

declare dso_local i64 @rtc_tm_to_ktime(i32) #1

declare dso_local %struct.timerqueue_node* @timerqueue_iterate_next(%struct.timerqueue_node*) #1

declare dso_local i32 @timerqueue_add(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @trace_rtc_timer_enqueue(%struct.rtc_timer*) #1

declare dso_local i64 @ktime_before(i32, i64) #1

declare dso_local i32 @rtc_ktime_to_tm(i32) #1

declare dso_local i32 @__rtc_set_alarm(%struct.rtc_device*, %struct.rtc_wkalrm*) #1

declare dso_local i32 @pm_stay_awake(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @timerqueue_del(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @trace_rtc_timer_dequeue(%struct.rtc_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
