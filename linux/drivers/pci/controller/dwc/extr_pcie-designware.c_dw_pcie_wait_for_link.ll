; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_wait_for_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_wait_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32 }

@LINK_WAIT_MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Link up\0A\00", align 1
@LINK_WAIT_USLEEP_MIN = common dso_local global i32 0, align 4
@LINK_WAIT_USLEEP_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Phy link never came up\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dw_pcie_wait_for_link(%struct.dw_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.dw_pcie* %0, %struct.dw_pcie** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @LINK_WAIT_MAX_RETRIES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %11 = call i64 @dw_pcie_link_up(%struct.dw_pcie* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %15 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_info(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

18:                                               ; preds = %9
  %19 = load i32, i32* @LINK_WAIT_USLEEP_MIN, align 4
  %20 = load i32, i32* @LINK_WAIT_USLEEP_MAX, align 4
  %21 = call i32 @usleep_range(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %5

25:                                               ; preds = %5
  %26 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %27 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_info(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @dw_pcie_link_up(%struct.dw_pcie*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
