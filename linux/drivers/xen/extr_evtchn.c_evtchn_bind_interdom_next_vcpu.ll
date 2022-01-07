; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_evtchn.c_evtchn_bind_interdom_next_vcpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_evtchn.c_evtchn_bind_interdom_next_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@bind_last_selected_cpu = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @evtchn_bind_interdom_next_vcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evtchn_bind_interdom_next_vcpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_desc*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @irq_from_evtchn(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.irq_desc* @irq_to_desc(i32 %9)
  store %struct.irq_desc* %10, %struct.irq_desc** %5, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %12 = icmp ne %struct.irq_desc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @bind_last_selected_cpu, align 4
  %20 = call i32 @this_cpu_read(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %23 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @cpu_online_mask, align 4
  %27 = call i32 @cpumask_next_and(i32 %21, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @nr_cpu_ids, align 4
  %30 = icmp uge i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %14
  %35 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %36 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @cpu_online_mask, align 4
  %40 = call i32 @cpumask_first_and(i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %34, %14
  %42 = load i32, i32* @bind_last_selected_cpu, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @this_cpu_write(i32 %42, i32 %43)
  %45 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @xen_set_affinity_evtchn(%struct.irq_desc* %45, i32 %46)
  %48 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %49 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %48, i32 0, i32 0
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @raw_spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %41, %13
  ret void
}

declare dso_local i32 @irq_from_evtchn(i32) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @cpumask_next_and(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpumask_first_and(i32, i32) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @xen_set_affinity_evtchn(%struct.irq_desc*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
