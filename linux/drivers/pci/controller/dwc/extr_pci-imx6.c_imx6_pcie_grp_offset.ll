; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_grp_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_grp_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IMX8MQ = common dso_local global i64 0, align 8
@IOMUXC_GPR16 = common dso_local global i32 0, align 4
@IOMUXC_GPR14 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx6_pcie*)* @imx6_pcie_grp_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_pcie_grp_offset(%struct.imx6_pcie* %0) #0 {
  %2 = alloca %struct.imx6_pcie*, align 8
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %2, align 8
  %3 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %4 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IMX8MQ, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %13 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @IOMUXC_GPR16, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @IOMUXC_GPR14, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  ret i32 %21
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
