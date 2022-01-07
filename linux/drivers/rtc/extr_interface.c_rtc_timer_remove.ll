; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_timer_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_timer_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rtc_timer = type { %struct.timerqueue_node, i64 }
%struct.timerqueue_node = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }

@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_device*, %struct.rtc_timer*)* @rtc_timer_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_timer_remove(%struct.rtc_device* %0, %struct.rtc_timer* %1) #0 {
  %3 = alloca %struct.rtc_device*, align 8
  %4 = alloca %struct.rtc_timer*, align 8
  %5 = alloca %struct.timerqueue_node*, align 8
  %6 = alloca %struct.rtc_wkalrm, align 4
  %7 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %3, align 8
  store %struct.rtc_timer* %1, %struct.rtc_timer** %4, align 8
  %8 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %9 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %8, i32 0, i32 2
  %10 = call %struct.timerqueue_node* @timerqueue_getnext(i32* %9)
  store %struct.timerqueue_node* %10, %struct.timerqueue_node** %5, align 8
  %11 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %12 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %11, i32 0, i32 2
  %13 = load %struct.rtc_timer*, %struct.rtc_timer** %4, align 8
  %14 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %13, i32 0, i32 0
  %15 = call i32 @timerqueue_del(i32* %12, %struct.timerqueue_node* %14)
  %16 = load %struct.rtc_timer*, %struct.rtc_timer** %4, align 8
  %17 = call i32 @trace_rtc_timer_dequeue(%struct.rtc_timer* %16)
  %18 = load %struct.rtc_timer*, %struct.rtc_timer** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.timerqueue_node*, %struct.timerqueue_node** %5, align 8
  %21 = load %struct.rtc_timer*, %struct.rtc_timer** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %21, i32 0, i32 0
  %23 = icmp eq %struct.timerqueue_node* %20, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %2
  %25 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %26 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %25, i32 0, i32 2
  %27 = call %struct.timerqueue_node* @timerqueue_getnext(i32* %26)
  store %struct.timerqueue_node* %27, %struct.timerqueue_node** %5, align 8
  %28 = load %struct.timerqueue_node*, %struct.timerqueue_node** %5, align 8
  %29 = icmp ne %struct.timerqueue_node* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %32 = call i32 @rtc_alarm_disable(%struct.rtc_device* %31)
  br label %56

33:                                               ; preds = %24
  %34 = load %struct.timerqueue_node*, %struct.timerqueue_node** %5, align 8
  %35 = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rtc_ktime_to_tm(i32 %36)
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %6, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %6, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %41 = call i32 @__rtc_set_alarm(%struct.rtc_device* %40, %struct.rtc_wkalrm* %6)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ETIME, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %33
  %47 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %48 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pm_stay_awake(i32 %50)
  %52 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %53 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %52, i32 0, i32 0
  %54 = call i32 @schedule_work(i32* %53)
  br label %55

55:                                               ; preds = %46, %33
  br label %56

56:                                               ; preds = %30, %55, %2
  ret void
}

declare dso_local %struct.timerqueue_node* @timerqueue_getnext(i32*) #1

declare dso_local i32 @timerqueue_del(i32*, %struct.timerqueue_node*) #1

declare dso_local i32 @trace_rtc_timer_dequeue(%struct.rtc_timer*) #1

declare dso_local i32 @rtc_alarm_disable(%struct.rtc_device*) #1

declare dso_local i32 @rtc_ktime_to_tm(i32) #1

declare dso_local i32 @__rtc_set_alarm(%struct.rtc_device*, %struct.rtc_wkalrm*) #1

declare dso_local i32 @pm_stay_awake(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
