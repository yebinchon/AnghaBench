; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ufs.c_ufs_qcom_phy_get_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ufs.c_ufs_qcom_phy_get_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_qcom_phy = type { %struct.reset_control*, i32 }
%struct.reset_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_qcom_phy*)* @ufs_qcom_phy_get_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_qcom_phy_get_reset(%struct.ufs_qcom_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufs_qcom_phy*, align 8
  %4 = alloca %struct.reset_control*, align 8
  store %struct.ufs_qcom_phy* %0, %struct.ufs_qcom_phy** %3, align 8
  %5 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %6 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %5, i32 0, i32 0
  %7 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %8 = icmp ne %struct.reset_control* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %12 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.reset_control* @devm_reset_control_get_exclusive_by_index(i32 %13, i32 0)
  store %struct.reset_control* %14, %struct.reset_control** %4, align 8
  %15 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %16 = call i64 @IS_ERR(%struct.reset_control* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %20 = call i32 @PTR_ERR(%struct.reset_control* %19)
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %10
  %22 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %23 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %24 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %23, i32 0, i32 0
  store %struct.reset_control* %22, %struct.reset_control** %24, align 8
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %18, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.reset_control* @devm_reset_control_get_exclusive_by_index(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
