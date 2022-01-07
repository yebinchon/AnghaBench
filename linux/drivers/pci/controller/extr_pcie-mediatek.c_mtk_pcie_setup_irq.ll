; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pcie_port = type { i32, i32, %struct.mtk_pcie* }
%struct.mtk_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to init PCIe IRQ domain\0A\00", align 1
@mtk_pcie_intr_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pcie_port*, %struct.device_node*)* @mtk_pcie_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_setup_irq(%struct.mtk_pcie_port* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pcie_port*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.mtk_pcie*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  store %struct.mtk_pcie_port* %0, %struct.mtk_pcie_port** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %10 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %10, i32 0, i32 2
  %12 = load %struct.mtk_pcie*, %struct.mtk_pcie** %11, align 8
  store %struct.mtk_pcie* %12, %struct.mtk_pcie** %6, align 8
  %13 = load %struct.mtk_pcie*, %struct.mtk_pcie** %6, align 8
  %14 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call %struct.platform_device* @to_platform_device(%struct.device* %16)
  store %struct.platform_device* %17, %struct.platform_device** %8, align 8
  %18 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %4, align 8
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32 @mtk_pcie_init_irq_domain(%struct.mtk_pcie_port* %18, %struct.device_node* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %2
  %28 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %29 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @platform_get_irq(%struct.platform_device* %28, i32 %31)
  %33 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %4, align 8
  %36 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @mtk_pcie_intr_handler, align 4
  %39 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %4, align 8
  %40 = call i32 @irq_set_chained_handler_and_data(i32 %37, i32 %38, %struct.mtk_pcie_port* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %27, %23
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @mtk_pcie_init_irq_domain(%struct.mtk_pcie_port*, %struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.mtk_pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
