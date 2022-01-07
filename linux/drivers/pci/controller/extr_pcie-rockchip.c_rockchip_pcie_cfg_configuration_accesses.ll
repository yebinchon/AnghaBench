; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip.c_rockchip_pcie_cfg_configuration_accesses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip.c_rockchip_pcie_cfg_configuration_accesses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32 }

@PCIE_RC_BAR_CONF = common dso_local global i32 0, align 4
@RC_REGION_0_ADDR_TRANS_L = common dso_local global i32 0, align 4
@RC_REGION_0_PASS_BITS = common dso_local global i32 0, align 4
@PCIE_CORE_OB_REGION_ADDR0 = common dso_local global i32 0, align 4
@RC_REGION_0_ADDR_TRANS_H = common dso_local global i32 0, align 4
@PCIE_CORE_OB_REGION_ADDR1 = common dso_local global i32 0, align 4
@PCIE_CORE_OB_REGION_DESC0 = common dso_local global i32 0, align 4
@RC_REGION_0_TYPE_MASK = common dso_local global i32 0, align 4
@PCIE_CORE_OB_REGION_DESC1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rockchip_pcie_cfg_configuration_accesses(%struct.rockchip_pcie* %0, i32 %1) #0 {
  %3 = alloca %struct.rockchip_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %7 = load i32, i32* @PCIE_RC_BAR_CONF, align 4
  %8 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %6, i32 0, i32 %7)
  %9 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %10 = load i32, i32* @RC_REGION_0_ADDR_TRANS_L, align 4
  %11 = load i32, i32* @RC_REGION_0_PASS_BITS, align 4
  %12 = add nsw i32 %10, %11
  %13 = load i32, i32* @PCIE_CORE_OB_REGION_ADDR0, align 4
  %14 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %9, i32 %12, i32 %13)
  %15 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %16 = load i32, i32* @RC_REGION_0_ADDR_TRANS_H, align 4
  %17 = load i32, i32* @PCIE_CORE_OB_REGION_ADDR1, align 4
  %18 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %15, i32 %16, i32 %17)
  %19 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %20 = load i32, i32* @PCIE_CORE_OB_REGION_DESC0, align 4
  %21 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @RC_REGION_0_TYPE_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, 8388608
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PCIE_CORE_OB_REGION_DESC0, align 4
  %33 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %30, i32 %31, i32 %32)
  %34 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %35 = load i32, i32* @PCIE_CORE_OB_REGION_DESC1, align 4
  %36 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %34, i32 0, i32 %35)
  ret void
}

declare dso_local i32 @rockchip_pcie_write(%struct.rockchip_pcie*, i32, i32) #1

declare dso_local i32 @rockchip_pcie_read(%struct.rockchip_pcie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
