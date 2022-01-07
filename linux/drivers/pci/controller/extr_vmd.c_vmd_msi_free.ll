; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_msi_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_msi_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.msi_domain_info = type { i32 }
%struct.vmd_irq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, %struct.msi_domain_info*, i32)* @vmd_msi_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmd_msi_free(%struct.irq_domain* %0, %struct.msi_domain_info* %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.msi_domain_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmd_irq*, align 8
  %8 = alloca i64, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store %struct.msi_domain_info* %1, %struct.msi_domain_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.vmd_irq* @irq_get_chip_data(i32 %9)
  store %struct.vmd_irq* %10, %struct.vmd_irq** %7, align 8
  %11 = load %struct.vmd_irq*, %struct.vmd_irq** %7, align 8
  %12 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @synchronize_srcu(i32* %14)
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @raw_spin_lock_irqsave(i32* @list_lock, i64 %16)
  %18 = load %struct.vmd_irq*, %struct.vmd_irq** %7, align 8
  %19 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @raw_spin_unlock_irqrestore(i32* @list_lock, i64 %24)
  %26 = load %struct.vmd_irq*, %struct.vmd_irq** %7, align 8
  %27 = call i32 @kfree(%struct.vmd_irq* %26)
  ret void
}

declare dso_local %struct.vmd_irq* @irq_get_chip_data(i32) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.vmd_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
