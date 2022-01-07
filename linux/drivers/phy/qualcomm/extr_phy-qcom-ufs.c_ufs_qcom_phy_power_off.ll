; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ufs.c_ufs_qcom_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ufs.c_ufs_qcom_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ufs_qcom_phy = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.ufs_qcom_phy*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_qcom_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.ufs_qcom_phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.ufs_qcom_phy* @get_ufs_qcom_phy(%struct.phy* %4)
  store %struct.ufs_qcom_phy* %5, %struct.ufs_qcom_phy** %3, align 8
  %6 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %7 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %6, i32 0, i32 5
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (%struct.ufs_qcom_phy*, i32)*, i32 (%struct.ufs_qcom_phy*, i32)** %9, align 8
  %11 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %12 = call i32 %10(%struct.ufs_qcom_phy* %11, i32 0)
  %13 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %14 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %20 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %23 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %22, i32 0, i32 4
  %24 = call i32 @ufs_qcom_phy_disable_vreg(i32 %21, %struct.TYPE_4__* %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %27 = call i32 @ufs_qcom_phy_disable_ref_clk(%struct.ufs_qcom_phy* %26)
  %28 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %29 = call i32 @ufs_qcom_phy_disable_iface_clk(%struct.ufs_qcom_phy* %28)
  %30 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %31 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %34 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %33, i32 0, i32 3
  %35 = call i32 @ufs_qcom_phy_disable_vreg(i32 %32, %struct.TYPE_4__* %34)
  %36 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %37 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %40 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %39, i32 0, i32 1
  %41 = call i32 @ufs_qcom_phy_disable_vreg(i32 %38, %struct.TYPE_4__* %40)
  %42 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %43 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @reset_control_assert(i32 %44)
  ret i32 0
}

declare dso_local %struct.ufs_qcom_phy* @get_ufs_qcom_phy(%struct.phy*) #1

declare dso_local i32 @ufs_qcom_phy_disable_vreg(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ufs_qcom_phy_disable_ref_clk(%struct.ufs_qcom_phy*) #1

declare dso_local i32 @ufs_qcom_phy_disable_iface_clk(%struct.ufs_qcom_phy*) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
