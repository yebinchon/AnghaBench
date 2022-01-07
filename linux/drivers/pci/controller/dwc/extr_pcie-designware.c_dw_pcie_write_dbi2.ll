; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_write_dbi2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_write_dbi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dw_pcie*, i64, i64, i64, i64)* }

@.str = private unnamed_addr constant [26 x i8] c"write DBI address failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_pcie_write_dbi2(%struct.dw_pcie* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dw_pcie* %0, %struct.dw_pcie** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %11 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.dw_pcie*, i64, i64, i64, i64)*, i32 (%struct.dw_pcie*, i64, i64, i64, i64)** %13, align 8
  %15 = icmp ne i32 (%struct.dw_pcie*, i64, i64, i64, i64)* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %18 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dw_pcie*, i64, i64, i64, i64)*, i32 (%struct.dw_pcie*, i64, i64, i64, i64)** %20, align 8
  %22 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %23 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %24 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 %21(%struct.dw_pcie* %22, i64 %25, i64 %26, i64 %27, i64 %28)
  br label %46

30:                                               ; preds = %4
  %31 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %32 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @dw_pcie_write(i64 %35, i64 %36, i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %43 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %16, %41, %30
  ret void
}

declare dso_local i32 @dw_pcie_write(i64, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
