; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_wait_for_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_wait_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nwl_pcie = type { %struct.device* }
%struct.device = type { i32 }

@LINK_WAIT_MAX_RETRIES = common dso_local global i32 0, align 4
@LINK_WAIT_USLEEP_MIN = common dso_local global i32 0, align 4
@LINK_WAIT_USLEEP_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PHY link never came up\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nwl_pcie*)* @nwl_wait_for_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nwl_wait_for_link(%struct.nwl_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nwl_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.nwl_pcie* %0, %struct.nwl_pcie** %3, align 8
  %6 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @LINK_WAIT_MAX_RETRIES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %15 = call i64 @nwl_phy_link_up(%struct.nwl_pcie* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %30

18:                                               ; preds = %13
  %19 = load i32, i32* @LINK_WAIT_USLEEP_MIN, align 4
  %20 = load i32, i32* @LINK_WAIT_USLEEP_MAX, align 4
  %21 = call i32 @usleep_range(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %9

25:                                               ; preds = %9
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @nwl_phy_link_up(%struct.nwl_pcie*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
