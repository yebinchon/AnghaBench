; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_internal.h_xen_evtchn_port_bind_to_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_internal.h_xen_evtchn_port_bind_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.irq_info*, i32)* }
%struct.irq_info = type { i32 }

@evtchn_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_info*, i32)* @xen_evtchn_port_bind_to_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_evtchn_port_bind_to_cpu(%struct.irq_info* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_info*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_info* %0, %struct.irq_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @evtchn_ops, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.irq_info*, i32)*, i32 (%struct.irq_info*, i32)** %6, align 8
  %8 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 %7(%struct.irq_info* %8, i32 %9)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
