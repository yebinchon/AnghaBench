; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_establish_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_establish_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_pcie = type { %struct.TYPE_2__*, %struct.dw_pcie* }
%struct.TYPE_2__ = type { {}* }
%struct.dw_pcie = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_pcie*)* @qcom_pcie_establish_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pcie_establish_link(%struct.qcom_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_pcie*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  store %struct.qcom_pcie* %0, %struct.qcom_pcie** %3, align 8
  %5 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %6 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %5, i32 0, i32 1
  %7 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  store %struct.dw_pcie* %7, %struct.dw_pcie** %4, align 8
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %9 = call i64 @dw_pcie_link_up(%struct.dw_pcie* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %14 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.qcom_pcie*)**
  %18 = load i32 (%struct.qcom_pcie*)*, i32 (%struct.qcom_pcie*)** %17, align 8
  %19 = icmp ne i32 (%struct.qcom_pcie*)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %12
  %21 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %22 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.qcom_pcie*)**
  %26 = load i32 (%struct.qcom_pcie*)*, i32 (%struct.qcom_pcie*)** %25, align 8
  %27 = load %struct.qcom_pcie*, %struct.qcom_pcie** %3, align 8
  %28 = call i32 %26(%struct.qcom_pcie* %27)
  br label %29

29:                                               ; preds = %20, %12
  %30 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %31 = call i32 @dw_pcie_wait_for_link(%struct.dw_pcie* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @dw_pcie_link_up(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_wait_for_link(%struct.dw_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
