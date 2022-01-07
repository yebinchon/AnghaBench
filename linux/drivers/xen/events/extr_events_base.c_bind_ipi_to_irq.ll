; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_bind_ipi_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_bind_ipi_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evtchn_bind_ipi = type { i32, i32 }
%struct.irq_info = type { i64 }

@irq_mapping_update_lock = common dso_local global i32 0, align 4
@ipi_to_irq = common dso_local global i32 0, align 4
@xen_percpu_chip = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ipi\00", align 1
@EVTCHNOP_bind_ipi = common dso_local global i32 0, align 4
@IRQT_IPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bind_ipi_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_ipi_to_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.evtchn_bind_ipi, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.irq_info*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = call i32 @mutex_lock(i32* @irq_mapping_update_lock)
  %11 = load i32, i32* @ipi_to_irq, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32* @per_cpu(i32 %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %55

20:                                               ; preds = %2
  %21 = call i32 (...) @xen_allocate_irq_dynamic()
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %71

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @handle_percpu_irq, align 4
  %28 = call i32 @irq_set_chip_and_handler_name(i32 %26, i32* @xen_percpu_chip, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @xen_vcpu_nr(i32 %29)
  %31 = getelementptr inbounds %struct.evtchn_bind_ipi, %struct.evtchn_bind_ipi* %5, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @EVTCHNOP_bind_ipi, align 4
  %33 = call i64 @HYPERVISOR_event_channel_op(i32 %32, %struct.evtchn_bind_ipi* %5)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = call i32 (...) @BUG()
  br label %37

37:                                               ; preds = %35, %25
  %38 = getelementptr inbounds %struct.evtchn_bind_ipi, %struct.evtchn_bind_ipi* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @xen_irq_info_ipi_setup(i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @__unbind_from_irq(i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %7, align 4
  br label %71

51:                                               ; preds = %37
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @bind_evtchn_to_cpu(i32 %52, i32 %53)
  br label %70

55:                                               ; preds = %2
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.irq_info* @info_for_irq(i32 %56)
  store %struct.irq_info* %57, %struct.irq_info** %9, align 8
  %58 = load %struct.irq_info*, %struct.irq_info** %9, align 8
  %59 = icmp eq %struct.irq_info* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load %struct.irq_info*, %struct.irq_info** %9, align 8
  %62 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IRQT_IPI, align 8
  %65 = icmp ne i64 %63, %64
  br label %66

66:                                               ; preds = %60, %55
  %67 = phi i1 [ true, %55 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON(i32 %68)
  br label %70

70:                                               ; preds = %66, %51
  br label %71

71:                                               ; preds = %70, %47, %24
  %72 = call i32 @mutex_unlock(i32* @irq_mapping_update_lock)
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @per_cpu(i32, i32) #1

declare dso_local i32 @xen_allocate_irq_dynamic(...) #1

declare dso_local i32 @irq_set_chip_and_handler_name(i32, i32*, i32, i8*) #1

declare dso_local i32 @xen_vcpu_nr(i32) #1

declare dso_local i64 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_bind_ipi*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @xen_irq_info_ipi_setup(i32, i32, i32, i32) #1

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
