; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_add_windows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_add_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pcie_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Could not create MBus window at [mem %pa-%pa]: %d\0A\00", align 1
@MVEBU_MBUS_NO_REMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvebu_pcie_port*, i32, i32, i64, i64, i64)* @mvebu_pcie_add_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pcie_add_windows(%struct.mvebu_pcie_port* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.mvebu_pcie_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.mvebu_pcie_port* %0, %struct.mvebu_pcie_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %17

17:                                               ; preds = %70, %6
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %17
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @fls(i64 %21)
  %23 = sub nsw i32 %22, 1
  %24 = shl i32 1, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %14, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @mvebu_mbus_add_window_remap_by_id(i32 %26, i32 %27, i64 %28, i64 %29, i64 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %20
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %14, align 8
  %37 = add i64 %35, %36
  %38 = sub i64 %37, 1
  store i64 %38, i64* %16, align 8
  %39 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %7, align 8
  %40 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64* %10, i64* %16, i32 %45)
  %47 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %7, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %13, align 8
  %50 = sub i64 %48, %49
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @mvebu_pcie_del_windows(%struct.mvebu_pcie_port* %47, i64 %50, i64 %51)
  br label %71

53:                                               ; preds = %20
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %11, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @MVEBU_MBUS_NO_REMAP, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %53
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %66, %53
  br label %17

71:                                               ; preds = %34, %17
  ret void
}

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @mvebu_mbus_add_window_remap_by_id(i32, i32, i64, i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64*, i64*, i32) #1

declare dso_local i32 @mvebu_pcie_del_windows(%struct.mvebu_pcie_port*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
