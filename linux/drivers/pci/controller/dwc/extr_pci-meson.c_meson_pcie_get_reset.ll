; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-meson.c_meson_pcie_get_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-meson.c_meson_pcie_get_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_control = type { i32 }
%struct.meson_pcie = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@PCIE_SHARED_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reset_control* (%struct.meson_pcie*, i8*, i64)* @meson_pcie_get_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reset_control* @meson_pcie_get_reset(%struct.meson_pcie* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.meson_pcie*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.reset_control*, align 8
  store %struct.meson_pcie* %0, %struct.meson_pcie** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.meson_pcie*, %struct.meson_pcie** %4, align 8
  %10 = getelementptr inbounds %struct.meson_pcie, %struct.meson_pcie* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PCIE_SHARED_RESET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.reset_control* @devm_reset_control_get_shared(%struct.device* %17, i8* %18)
  store %struct.reset_control* %19, %struct.reset_control** %8, align 8
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call %struct.reset_control* @devm_reset_control_get(%struct.device* %21, i8* %22)
  store %struct.reset_control* %23, %struct.reset_control** %8, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.reset_control*, %struct.reset_control** %8, align 8
  ret %struct.reset_control* %25
}

declare dso_local %struct.reset_control* @devm_reset_control_get_shared(%struct.device*, i8*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
