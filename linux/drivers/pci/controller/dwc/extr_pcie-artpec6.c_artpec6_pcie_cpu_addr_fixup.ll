; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_cpu_addr_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_cpu_addr_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32, %struct.dw_pcie_ep, %struct.pcie_port }
%struct.dw_pcie_ep = type { i64 }
%struct.pcie_port = type { i64 }
%struct.artpec6_pcie = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"UNKNOWN device type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dw_pcie*, i64)* @artpec6_pcie_cpu_addr_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @artpec6_pcie_cpu_addr_fixup(%struct.dw_pcie* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.artpec6_pcie*, align 8
  %7 = alloca %struct.pcie_port*, align 8
  %8 = alloca %struct.dw_pcie_ep*, align 8
  store %struct.dw_pcie* %0, %struct.dw_pcie** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %10 = call %struct.artpec6_pcie* @to_artpec6_pcie(%struct.dw_pcie* %9)
  store %struct.artpec6_pcie* %10, %struct.artpec6_pcie** %6, align 8
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %11, i32 0, i32 2
  store %struct.pcie_port* %12, %struct.pcie_port** %7, align 8
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %14 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %13, i32 0, i32 1
  store %struct.dw_pcie_ep* %14, %struct.dw_pcie_ep** %8, align 8
  %15 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %16 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %30 [
    i32 128, label %18
    i32 129, label %24
  ]

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %21 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %3, align 8
  br label %37

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %8, align 8
  %27 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %3, align 8
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %32 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %35, %24, %18
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local %struct.artpec6_pcie* @to_artpec6_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
