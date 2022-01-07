; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_bind_virq_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_bind_virq_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evtchn_bind_virq = type { i32, i32, i32 }
%struct.irq_info = type { i64 }

@irq_mapping_update_lock = common dso_local global i32 0, align 4
@virq_to_irq = common dso_local global i32 0, align 4
@xen_percpu_chip = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"virq\00", align 1
@xen_dynamic_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@EVTCHNOP_bind_virq = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@IRQT_VIRQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bind_virq_to_irq(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.evtchn_bind_virq, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.irq_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = call i32 @mutex_lock(i32* @irq_mapping_update_lock)
  %13 = load i32, i32* @virq_to_irq, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32* @per_cpu(i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %82

22:                                               ; preds = %3
  %23 = call i32 (...) @xen_allocate_irq_dynamic()
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %98

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @handle_percpu_irq, align 4
  %33 = call i32 @irq_set_chip_and_handler_name(i32 %31, i32* @xen_percpu_chip, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @handle_edge_irq, align 4
  %37 = call i32 @irq_set_chip_and_handler_name(i32 %35, i32* @xen_dynamic_chip, i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @xen_vcpu_nr(i32 %41)
  %43 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %7, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @EVTCHNOP_bind_virq, align 4
  %45 = call i32 @HYPERVISOR_event_channel_op(i32 %44, %struct.evtchn_bind_virq* %7)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %7, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %66

51:                                               ; preds = %38
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @EEXIST, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @find_virq(i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %60, %48
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @xen_irq_info_virq_setup(i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @__unbind_from_irq(i32 %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %9, align 4
  br label %98

78:                                               ; preds = %66
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @bind_evtchn_to_cpu(i32 %79, i32 %80)
  br label %97

82:                                               ; preds = %3
  %83 = load i32, i32* %9, align 4
  %84 = call %struct.irq_info* @info_for_irq(i32 %83)
  store %struct.irq_info* %84, %struct.irq_info** %11, align 8
  %85 = load %struct.irq_info*, %struct.irq_info** %11, align 8
  %86 = icmp eq %struct.irq_info* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = load %struct.irq_info*, %struct.irq_info** %11, align 8
  %89 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @IRQT_VIRQ, align 8
  %92 = icmp ne i64 %90, %91
  br label %93

93:                                               ; preds = %87, %82
  %94 = phi i1 [ true, %82 ], [ %92, %87 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @WARN_ON(i32 %95)
  br label %97

97:                                               ; preds = %93, %78
  br label %98

98:                                               ; preds = %97, %74, %26
  %99 = call i32 @mutex_unlock(i32* @irq_mapping_update_lock)
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @per_cpu(i32, i32) #1

declare dso_local i32 @xen_allocate_irq_dynamic(...) #1

declare dso_local i32 @irq_set_chip_and_handler_name(i32, i32*, i32, i8*) #1

declare dso_local i32 @xen_vcpu_nr(i32) #1

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_bind_virq*) #1

declare dso_local i32 @find_virq(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @xen_irq_info_virq_setup(i32, i32, i32, i32) #1

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
