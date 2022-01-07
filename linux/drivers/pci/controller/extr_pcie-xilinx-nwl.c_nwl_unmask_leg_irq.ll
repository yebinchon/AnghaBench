; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_unmask_leg_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_unmask_leg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, i32 }
%struct.irq_desc = type { i32 }
%struct.nwl_pcie = type { i32 }

@MSGF_LEG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @nwl_unmask_leg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nwl_unmask_leg_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca %struct.nwl_pcie*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.irq_desc* @irq_to_desc(i32 %10)
  store %struct.irq_desc* %11, %struct.irq_desc** %3, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %13 = call %struct.nwl_pcie* @irq_desc_get_chip_data(%struct.irq_desc* %12)
  store %struct.nwl_pcie* %13, %struct.nwl_pcie** %4, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = shl i32 1, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %20 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @raw_spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %24 = load i32, i32* @MSGF_LEG_MASK, align 4
  %25 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MSGF_LEG_MASK, align 4
  %31 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %26, i32 %29, i32 %30)
  %32 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %33 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @raw_spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local %struct.nwl_pcie* @irq_desc_get_chip_data(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nwl_bridge_readl(%struct.nwl_pcie*, i32) #1

declare dso_local i32 @nwl_bridge_writel(%struct.nwl_pcie*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
