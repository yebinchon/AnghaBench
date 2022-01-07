; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.TYPE_2__*, %struct.vmd_irq* }
%struct.TYPE_2__ = type { i32 (%struct.irq_data*)* }
%struct.vmd_irq = type { i32, i32 }

@list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @vmd_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmd_irq_disable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.vmd_irq*, align 8
  %4 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 1
  %7 = load %struct.vmd_irq*, %struct.vmd_irq** %6, align 8
  store %struct.vmd_irq* %7, %struct.vmd_irq** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %11, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = call i32 %12(%struct.irq_data* %13)
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @raw_spin_lock_irqsave(i32* @list_lock, i64 %15)
  %17 = load %struct.vmd_irq*, %struct.vmd_irq** %3, align 8
  %18 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.vmd_irq*, %struct.vmd_irq** %3, align 8
  %23 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %22, i32 0, i32 1
  %24 = call i32 @list_del_rcu(i32* %23)
  %25 = load %struct.vmd_irq*, %struct.vmd_irq** %3, align 8
  %26 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %1
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @raw_spin_unlock_irqrestore(i32* @list_lock, i64 %28)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
