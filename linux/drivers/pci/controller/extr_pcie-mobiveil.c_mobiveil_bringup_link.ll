; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_bringup_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_bringup_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mobiveil_pcie = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LINK_WAIT_MAX_RETRIES = common dso_local global i32 0, align 4
@LINK_WAIT_MIN = common dso_local global i32 0, align 4
@LINK_WAIT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"link never came up\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mobiveil_pcie*)* @mobiveil_bringup_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mobiveil_bringup_link(%struct.mobiveil_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mobiveil_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.mobiveil_pcie* %0, %struct.mobiveil_pcie** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @LINK_WAIT_MAX_RETRIES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %11 = call i64 @mobiveil_pcie_link_up(%struct.mobiveil_pcie* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %29

14:                                               ; preds = %9
  %15 = load i32, i32* @LINK_WAIT_MIN, align 4
  %16 = load i32, i32* @LINK_WAIT_MAX, align 4
  %17 = call i32 @usleep_range(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %5

21:                                               ; preds = %5
  %22 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %23 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %21, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @mobiveil_pcie_link_up(%struct.mobiveil_pcie*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
