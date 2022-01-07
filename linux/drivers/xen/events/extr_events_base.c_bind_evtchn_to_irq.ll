; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_bind_evtchn_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_bind_evtchn_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_info = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@irq_mapping_update_lock = common dso_local global i32 0, align 4
@xen_dynamic_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"event\00", align 1
@IRQT_EVTCHN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bind_evtchn_to_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_info*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 (...) @xen_evtchn_max_channels()
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = call i32 @mutex_lock(i32* @irq_mapping_update_lock)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @get_evtchn_to_irq(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = call i32 (...) @xen_allocate_irq_dynamic()
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %56

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @handle_edge_irq, align 4
  %27 = call i32 @irq_set_chip_and_handler_name(i32 %25, i32* @xen_dynamic_chip, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @xen_irq_info_evtchn_setup(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @__unbind_from_irq(i32 %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %4, align 4
  br label %56

37:                                               ; preds = %24
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @bind_evtchn_to_cpu(i32 %38, i32 0)
  br label %55

40:                                               ; preds = %13
  %41 = load i32, i32* %4, align 4
  %42 = call %struct.irq_info* @info_for_irq(i32 %41)
  store %struct.irq_info* %42, %struct.irq_info** %6, align 8
  %43 = load %struct.irq_info*, %struct.irq_info** %6, align 8
  %44 = icmp eq %struct.irq_info* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.irq_info*, %struct.irq_info** %6, align 8
  %47 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IRQT_EVTCHN, align 8
  %50 = icmp ne i64 %48, %49
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i1 [ true, %40 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  br label %55

55:                                               ; preds = %51, %37
  br label %56

56:                                               ; preds = %55, %33, %23
  %57 = call i32 @mutex_unlock(i32* @irq_mapping_update_lock)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @xen_evtchn_max_channels(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_evtchn_to_irq(i32) #1

declare dso_local i32 @xen_allocate_irq_dynamic(...) #1

declare dso_local i32 @irq_set_chip_and_handler_name(i32, i32*, i32, i8*) #1

declare dso_local i32 @xen_irq_info_evtchn_setup(i32, i32) #1

declare dso_local i32 @__unbind_from_irq(i32) #1

declare dso_local i32 @bind_evtchn_to_cpu(i32, i32) #1

declare dso_local %struct.irq_info* @info_for_irq(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
