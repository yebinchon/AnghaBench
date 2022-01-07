; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx.c_xilinx_pcie_destroy_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx.c_xilinx_pcie_destroy_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_desc = type { i32 }
%struct.xilinx_pcie_port = type { i32 }
%struct.irq_data = type { i32 }

@msi_irq_in_use = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Trying to free unused MSI#%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xilinx_pcie_destroy_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xilinx_pcie_destroy_msi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msi_desc*, align 8
  %4 = alloca %struct.xilinx_pcie_port*, align 8
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.irq_data* @irq_get_irq_data(i32 %7)
  store %struct.irq_data* %8, %struct.irq_data** %5, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %10 = call i32 @irqd_to_hwirq(%struct.irq_data* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @msi_irq_in_use, align 4
  %13 = call i32 @test_bit(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call %struct.msi_desc* @irq_get_msi_desc(i32 %16)
  store %struct.msi_desc* %17, %struct.msi_desc** %3, align 8
  %18 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %19 = call %struct.xilinx_pcie_port* @msi_desc_to_pci_sysdata(%struct.msi_desc* %18)
  store %struct.xilinx_pcie_port* %19, %struct.xilinx_pcie_port** %4, align 8
  %20 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %4, align 8
  %21 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @msi_irq_in_use, align 4
  %28 = call i32 @clear_bit(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %15
  ret void
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local %struct.msi_desc* @irq_get_msi_desc(i32) #1

declare dso_local %struct.xilinx_pcie_port* @msi_desc_to_pci_sysdata(%struct.msi_desc*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
