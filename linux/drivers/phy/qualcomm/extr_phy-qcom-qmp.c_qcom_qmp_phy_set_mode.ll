; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-qmp.c_qcom_qmp_phy_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-qmp.c_qcom_qmp_phy_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.qmp_phy = type { %struct.qcom_qmp* }
%struct.qcom_qmp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32)* @qcom_qmp_phy_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_qmp_phy_set_mode(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qmp_phy*, align 8
  %8 = alloca %struct.qcom_qmp*, align 8
  store %struct.phy* %0, %struct.phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.phy*, %struct.phy** %4, align 8
  %10 = call %struct.qmp_phy* @phy_get_drvdata(%struct.phy* %9)
  store %struct.qmp_phy* %10, %struct.qmp_phy** %7, align 8
  %11 = load %struct.qmp_phy*, %struct.qmp_phy** %7, align 8
  %12 = getelementptr inbounds %struct.qmp_phy, %struct.qmp_phy* %11, i32 0, i32 0
  %13 = load %struct.qcom_qmp*, %struct.qcom_qmp** %12, align 8
  store %struct.qcom_qmp* %13, %struct.qcom_qmp** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.qcom_qmp*, %struct.qcom_qmp** %8, align 8
  %16 = getelementptr inbounds %struct.qcom_qmp, %struct.qcom_qmp* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret i32 0
}

declare dso_local %struct.qmp_phy* @phy_get_drvdata(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
