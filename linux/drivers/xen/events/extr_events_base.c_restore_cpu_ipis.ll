; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_restore_cpu_ipis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_restore_cpu_ipis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evtchn_bind_ipi = type { i32, i32 }

@XEN_NR_IPIS = common dso_local global i32 0, align 4
@ipi_to_irq = common dso_local global i32 0, align 4
@EVTCHNOP_bind_ipi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @restore_cpu_ipis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_cpu_ipis(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evtchn_bind_ipi, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %47, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @XEN_NR_IPIS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  %12 = load i32, i32* @ipi_to_irq, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32* @per_cpu(i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %47

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ipi_from_irq(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @xen_vcpu_nr(i32 %28)
  %30 = getelementptr inbounds %struct.evtchn_bind_ipi, %struct.evtchn_bind_ipi* %3, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @EVTCHNOP_bind_ipi, align 4
  %32 = call i64 @HYPERVISOR_event_channel_op(i32 %31, %struct.evtchn_bind_ipi* %3)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %34, %21
  %37 = getelementptr inbounds %struct.evtchn_bind_ipi, %struct.evtchn_bind_ipi* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @xen_irq_info_ipi_setup(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @bind_evtchn_to_cpu(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %20
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %7

50:                                               ; preds = %7
  ret void
}

declare dso_local i32* @per_cpu(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ipi_from_irq(i32) #1

declare dso_local i32 @xen_vcpu_nr(i32) #1

declare dso_local i64 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_bind_ipi*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @xen_irq_info_ipi_setup(i32, i32, i32, i32) #1

declare dso_local i32 @bind_evtchn_to_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
