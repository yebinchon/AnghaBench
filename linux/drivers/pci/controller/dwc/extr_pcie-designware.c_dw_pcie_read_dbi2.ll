; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_read_dbi2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_read_dbi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dw_pcie*, i64, i64, i64)* }

@.str = private unnamed_addr constant [25 x i8] c"read DBI address failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dw_pcie_read_dbi2(%struct.dw_pcie* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.dw_pcie* %0, %struct.dw_pcie** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %11 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64 (%struct.dw_pcie*, i64, i64, i64)*, i64 (%struct.dw_pcie*, i64, i64, i64)** %13, align 8
  %15 = icmp ne i64 (%struct.dw_pcie*, i64, i64, i64)* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %18 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (%struct.dw_pcie*, i64, i64, i64)*, i64 (%struct.dw_pcie*, i64, i64, i64)** %20, align 8
  %22 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %23 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %24 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 %21(%struct.dw_pcie* %22, i64 %25, i64 %26, i64 %27)
  store i64 %28, i64* %4, align 8
  br label %46

29:                                               ; preds = %3
  %30 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %31 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @dw_pcie_read(i64 %34, i64 %35, i64* %9)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %41 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %29
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i32 @dw_pcie_read(i64, i64, i64*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
