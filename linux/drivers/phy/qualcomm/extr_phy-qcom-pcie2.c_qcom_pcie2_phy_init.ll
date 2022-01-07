; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-pcie2.c_qcom_pcie2_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-pcie2.c_qcom_pcie2_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.qcom_phy = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"cannot deassert pipe reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @qcom_pcie2_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pcie2_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.qcom_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.qcom_phy* @phy_get_drvdata(%struct.phy* %6)
  store %struct.qcom_phy* %7, %struct.qcom_phy** %4, align 8
  %8 = load %struct.qcom_phy*, %struct.qcom_phy** %4, align 8
  %9 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @reset_control_deassert(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.qcom_phy*, %struct.qcom_phy** %4, align 8
  %16 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %1
  %21 = load %struct.qcom_phy*, %struct.qcom_phy** %4, align 8
  %22 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = load %struct.qcom_phy*, %struct.qcom_phy** %4, align 8
  %26 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regulator_bulk_enable(i32 %24, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.qcom_phy*, %struct.qcom_phy** %4, align 8
  %33 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @reset_control_assert(i32 %34)
  br label %36

36:                                               ; preds = %31, %20
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.qcom_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
