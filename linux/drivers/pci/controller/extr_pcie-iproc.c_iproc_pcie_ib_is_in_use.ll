; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_ib_is_in_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_ib_is_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { %struct.iproc_pcie_ib_map* }
%struct.iproc_pcie_ib_map = type { i32 }

@IPROC_PCIE_IARR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_pcie*, i32)* @iproc_pcie_ib_is_in_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pcie_ib_is_in_use(%struct.iproc_pcie* %0, i32 %1) #0 {
  %3 = alloca %struct.iproc_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iproc_pcie_ib_map*, align 8
  %6 = alloca i32, align 4
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %8 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %7, i32 0, i32 0
  %9 = load %struct.iproc_pcie_ib_map*, %struct.iproc_pcie_ib_map** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.iproc_pcie_ib_map, %struct.iproc_pcie_ib_map* %9, i64 %11
  store %struct.iproc_pcie_ib_map* %12, %struct.iproc_pcie_ib_map** %5, align 8
  %13 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %14 = load i32, i32* @IPROC_PCIE_IARR0, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @MAP_REG(i32 %14, i32 %15)
  %17 = call i32 @iproc_pcie_read_reg(%struct.iproc_pcie* %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.iproc_pcie_ib_map*, %struct.iproc_pcie_ib_map** %5, align 8
  %20 = getelementptr inbounds %struct.iproc_pcie_ib_map, %struct.iproc_pcie_ib_map* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %18, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i32 @iproc_pcie_read_reg(%struct.iproc_pcie*, i32) #1

declare dso_local i32 @MAP_REG(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
