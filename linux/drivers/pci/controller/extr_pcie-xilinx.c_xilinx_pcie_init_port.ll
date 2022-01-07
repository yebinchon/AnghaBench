; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx.c_xilinx_pcie_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx.c_xilinx_pcie_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_pcie_port = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"PCIe Link is UP\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"PCIe Link is DOWN\0A\00", align 1
@XILINX_PCIE_IDR_ALL_MASK = common dso_local global i32 0, align 4
@XILINX_PCIE_REG_IMR = common dso_local global i32 0, align 4
@XILINX_PCIE_REG_IDR = common dso_local global i32 0, align 4
@XILINX_PCIE_IMR_ALL_MASK = common dso_local global i32 0, align 4
@XILINX_PCIE_IMR_ENABLE_MASK = common dso_local global i32 0, align 4
@XILINX_PCIE_REG_RPSC = common dso_local global i32 0, align 4
@XILINX_PCIE_REG_RPSC_BEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xilinx_pcie_port*)* @xilinx_pcie_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xilinx_pcie_init_port(%struct.xilinx_pcie_port* %0) #0 {
  %2 = alloca %struct.xilinx_pcie_port*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.xilinx_pcie_port* %0, %struct.xilinx_pcie_port** %2, align 8
  %4 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %2, align 8
  %5 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %4, i32 0, i32 0
  %6 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %2, align 8
  %8 = call i64 @xilinx_pcie_link_up(%struct.xilinx_pcie_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @dev_info(%struct.device* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @dev_info(%struct.device* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %10
  %17 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %2, align 8
  %18 = load i32, i32* @XILINX_PCIE_IDR_ALL_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @XILINX_PCIE_REG_IMR, align 4
  %21 = call i32 @pcie_write(%struct.xilinx_pcie_port* %17, i32 %19, i32 %20)
  %22 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %2, align 8
  %23 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %2, align 8
  %24 = load i32, i32* @XILINX_PCIE_REG_IDR, align 4
  %25 = call i32 @pcie_read(%struct.xilinx_pcie_port* %23, i32 %24)
  %26 = load i32, i32* @XILINX_PCIE_IMR_ALL_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @XILINX_PCIE_REG_IDR, align 4
  %29 = call i32 @pcie_write(%struct.xilinx_pcie_port* %22, i32 %27, i32 %28)
  %30 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %2, align 8
  %31 = load i32, i32* @XILINX_PCIE_IMR_ENABLE_MASK, align 4
  %32 = load i32, i32* @XILINX_PCIE_REG_IMR, align 4
  %33 = call i32 @pcie_write(%struct.xilinx_pcie_port* %30, i32 %31, i32 %32)
  %34 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %2, align 8
  %35 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %2, align 8
  %36 = load i32, i32* @XILINX_PCIE_REG_RPSC, align 4
  %37 = call i32 @pcie_read(%struct.xilinx_pcie_port* %35, i32 %36)
  %38 = load i32, i32* @XILINX_PCIE_REG_RPSC_BEN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @XILINX_PCIE_REG_RPSC, align 4
  %41 = call i32 @pcie_write(%struct.xilinx_pcie_port* %34, i32 %39, i32 %40)
  ret void
}

declare dso_local i64 @xilinx_pcie_link_up(%struct.xilinx_pcie_port*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @pcie_write(%struct.xilinx_pcie_port*, i32, i32) #1

declare dso_local i32 @pcie_read(%struct.xilinx_pcie_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
