; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ufs-qmp-20nm.c_ufs_qcom_phy_qmp_20nm_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ufs-qmp-20nm.c_ufs_qcom_phy_qmp_20nm_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ufs_qcom_phy = type { i32 }

@PHY_MODE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32)* @ufs_qcom_phy_qmp_20nm_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_qcom_phy_qmp_20nm_set_mode(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ufs_qcom_phy*, align 8
  store %struct.phy* %0, %struct.phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.phy*, %struct.phy** %4, align 8
  %9 = call %struct.ufs_qcom_phy* @get_ufs_qcom_phy(%struct.phy* %8)
  store %struct.ufs_qcom_phy* %9, %struct.ufs_qcom_phy** %7, align 8
  %10 = load i32, i32* @PHY_MODE_INVALID, align 4
  %11 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %7, align 8
  %12 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ugt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %7, align 8
  %18 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %3
  ret i32 0
}

declare dso_local %struct.ufs_qcom_phy* @get_ufs_qcom_phy(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
