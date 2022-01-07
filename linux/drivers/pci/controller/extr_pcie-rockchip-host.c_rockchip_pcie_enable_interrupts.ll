; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32 }

@PCIE_CLIENT_INT_CLI = common dso_local global i32 0, align 4
@PCIE_CLIENT_INT_MASK = common dso_local global i32 0, align 4
@PCIE_CORE_INT = common dso_local global i64 0, align 8
@PCIE_CORE_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pcie*)* @rockchip_pcie_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_pcie_enable_interrupts(%struct.rockchip_pcie* %0) #0 {
  %2 = alloca %struct.rockchip_pcie*, align 8
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %2, align 8
  %3 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %2, align 8
  %4 = load i32, i32* @PCIE_CLIENT_INT_CLI, align 4
  %5 = shl i32 %4, 16
  %6 = load i32, i32* @PCIE_CLIENT_INT_CLI, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = load i32, i32* @PCIE_CLIENT_INT_MASK, align 4
  %10 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %3, i32 %8, i32 %9)
  %11 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %2, align 8
  %12 = load i64, i64* @PCIE_CORE_INT, align 8
  %13 = xor i64 %12, -1
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @PCIE_CORE_INT_MASK, align 4
  %16 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %11, i32 %14, i32 %15)
  %17 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %2, align 8
  %18 = call i32 @rockchip_pcie_enable_bw_int(%struct.rockchip_pcie* %17)
  ret void
}

declare dso_local i32 @rockchip_pcie_write(%struct.rockchip_pcie*, i32, i32) #1

declare dso_local i32 @rockchip_pcie_enable_bw_int(%struct.rockchip_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
