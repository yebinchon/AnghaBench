; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.TYPE_3__*, %struct.vmd_irq* }
%struct.TYPE_3__ = type { i32 (%struct.irq_data*)* }
%struct.vmd_irq = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @vmd_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmd_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.vmd_irq*, align 8
  %4 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 1
  %7 = load %struct.vmd_irq*, %struct.vmd_irq** %6, align 8
  store %struct.vmd_irq* %7, %struct.vmd_irq** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @raw_spin_lock_irqsave(i32* @list_lock, i64 %8)
  %10 = load %struct.vmd_irq*, %struct.vmd_irq** %3, align 8
  %11 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.vmd_irq*, %struct.vmd_irq** %3, align 8
  %15 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %14, i32 0, i32 2
  %16 = load %struct.vmd_irq*, %struct.vmd_irq** %3, align 8
  %17 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @list_add_tail_rcu(i32* %15, i32* %19)
  %21 = load %struct.vmd_irq*, %struct.vmd_irq** %3, align 8
  %22 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @raw_spin_unlock_irqrestore(i32* @list_lock, i64 %23)
  %25 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %26 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %28, align 8
  %30 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %31 = call i32 %29(%struct.irq_data* %30)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
