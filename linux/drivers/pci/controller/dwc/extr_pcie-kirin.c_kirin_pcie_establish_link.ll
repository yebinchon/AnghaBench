; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_establish_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_establish_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.kirin_pcie = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@PCIE_LTSSM_ENABLE_BIT = common dso_local global i32 0, align 4
@PCIE_APP_LTSSM_ENABLE = common dso_local global i32 0, align 4
@LINK_WAIT_MIN = common dso_local global i32 0, align 4
@LINK_WAIT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Link Fail\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*)* @kirin_pcie_establish_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirin_pcie_establish_link(%struct.pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.kirin_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %3, align 8
  %8 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %9 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %8)
  store %struct.dw_pcie* %9, %struct.dw_pcie** %4, align 8
  %10 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %11 = call %struct.kirin_pcie* @to_kirin_pcie(%struct.dw_pcie* %10)
  store %struct.kirin_pcie* %11, %struct.kirin_pcie** %5, align 8
  %12 = load %struct.kirin_pcie*, %struct.kirin_pcie** %5, align 8
  %13 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %18 = call i64 @kirin_pcie_link_up(%struct.dw_pcie* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %23 = call i32 @dw_pcie_setup_rc(%struct.pcie_port* %22)
  %24 = load %struct.kirin_pcie*, %struct.kirin_pcie** %5, align 8
  %25 = load i32, i32* @PCIE_LTSSM_ENABLE_BIT, align 4
  %26 = load i32, i32* @PCIE_APP_LTSSM_ENABLE, align 4
  %27 = call i32 @kirin_apb_ctrl_writel(%struct.kirin_pcie* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %46, %21
  %29 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %30 = call i64 @kirin_pcie_link_up(%struct.dw_pcie* %29)
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32, i32* @LINK_WAIT_MIN, align 4
  %35 = load i32, i32* @LINK_WAIT_MAX, align 4
  %36 = call i32 @usleep_range(i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 1000
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %33
  br label %28

47:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %41, %20
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.kirin_pcie* @to_kirin_pcie(%struct.dw_pcie*) #1

declare dso_local i64 @kirin_pcie_link_up(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_setup_rc(%struct.pcie_port*) #1

declare dso_local i32 @kirin_apb_ctrl_writel(%struct.kirin_pcie*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
