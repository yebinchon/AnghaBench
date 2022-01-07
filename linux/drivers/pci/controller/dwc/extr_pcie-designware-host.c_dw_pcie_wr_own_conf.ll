; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_wr_own_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_wr_own_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.dw_pcie = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*, i32, i32, i32)* @dw_pcie_wr_own_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcie_wr_own_conf(%struct.pcie_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcie_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dw_pcie*, align 8
  store %struct.pcie_port* %0, %struct.pcie_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %12 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.pcie_port*, i32, i32, i32)**
  %16 = load i32 (%struct.pcie_port*, i32, i32, i32)*, i32 (%struct.pcie_port*, i32, i32, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.pcie_port*, i32, i32, i32)* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %20 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.pcie_port*, i32, i32, i32)**
  %24 = load i32 (%struct.pcie_port*, i32, i32, i32)*, i32 (%struct.pcie_port*, i32, i32, i32)** %23, align 8
  %25 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 %24(%struct.pcie_port* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %42

30:                                               ; preds = %4
  %31 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %32 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %31)
  store %struct.dw_pcie* %32, %struct.dw_pcie** %10, align 8
  %33 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %34 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dw_pcie_write(i64 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %30, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local i32 @dw_pcie_write(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
