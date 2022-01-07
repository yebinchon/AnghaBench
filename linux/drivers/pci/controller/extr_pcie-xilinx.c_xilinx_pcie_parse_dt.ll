; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx.c_xilinx_pcie_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx.c_xilinx_pcie_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_pcie_port = type { i32, i32, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"missing \22reg\22 property\0A\00", align 1
@xilinx_pcie_intr_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"xilinx-pcie\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to request irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilinx_pcie_port*)* @xilinx_pcie_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_pcie_parse_dt(%struct.xilinx_pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xilinx_pcie_port*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource, align 4
  %7 = alloca i32, align 4
  store %struct.xilinx_pcie_port* %0, %struct.xilinx_pcie_port** %3, align 8
  %8 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %9 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %8, i32 0, i32 2
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call i32 @of_address_to_resource(%struct.device_node* %14, i32 0, %struct.resource* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %62

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @devm_pci_remap_cfg_resource(%struct.device* %23, %struct.resource* %6)
  %25 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %26 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %28 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %34 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %62

37:                                               ; preds = %22
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32 @irq_of_parse_and_map(%struct.device_node* %38, i32 0)
  %40 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %41 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %44 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @xilinx_pcie_intr_handler, align 4
  %47 = load i32, i32* @IRQF_SHARED, align 4
  %48 = load i32, i32* @IRQF_NO_THREAD, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %51 = call i32 @devm_request_irq(%struct.device* %42, i32 %45, i32 %46, i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.xilinx_pcie_port* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %37
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %3, align 8
  %57 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %54, %32, %18
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_pci_remap_cfg_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.xilinx_pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
