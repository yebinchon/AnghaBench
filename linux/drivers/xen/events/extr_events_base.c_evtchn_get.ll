; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_evtchn_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_evtchn_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_info = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@irq_mapping_update_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evtchn_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @ENOENT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 (...) @xen_evtchn_max_channels()
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = call i32 @mutex_lock(i32* @irq_mapping_update_lock)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @get_evtchn_to_irq(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %41

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.irq_info* @irq_get_handler_data(i32 %23)
  store %struct.irq_info* %24, %struct.irq_info** %5, align 8
  %25 = load %struct.irq_info*, %struct.irq_info** %5, align 8
  %26 = icmp ne %struct.irq_info* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %41

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.irq_info*, %struct.irq_info** %5, align 8
  %32 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %41

36:                                               ; preds = %28
  %37 = load %struct.irq_info*, %struct.irq_info** %5, align 8
  %38 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %36, %35, %27, %21
  %42 = call i32 @mutex_unlock(i32* @irq_mapping_update_lock)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @xen_evtchn_max_channels(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_evtchn_to_irq(i32) #1

declare dso_local %struct.irq_info* @irq_get_handler_data(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
