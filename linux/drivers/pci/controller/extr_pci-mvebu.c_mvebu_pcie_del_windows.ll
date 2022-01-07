; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_del_windows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_del_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pcie_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvebu_pcie_port*, i64, i64)* @mvebu_pcie_del_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pcie_del_windows(%struct.mvebu_pcie_port* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mvebu_pcie_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mvebu_pcie_port* %0, %struct.mvebu_pcie_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %11, %3
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @fls(i64 %12)
  %14 = sub nsw i32 %13, 1
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @mvebu_mbus_del_window(i64 %17, i64 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = sub i64 %24, %23
  store i64 %25, i64* %6, align 8
  br label %8

26:                                               ; preds = %8
  ret void
}

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @mvebu_mbus_del_window(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
