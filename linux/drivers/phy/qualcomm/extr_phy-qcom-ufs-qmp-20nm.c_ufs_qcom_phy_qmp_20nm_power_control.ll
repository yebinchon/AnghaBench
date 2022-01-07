; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ufs-qmp-20nm.c_ufs_qcom_phy_qmp_20nm_power_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ufs-qmp-20nm.c_ufs_qcom_phy_qmp_20nm_power_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_qcom_phy = type { i32, i64 }

@UFS_QCOM_PHY_QUIRK_HIBERN8_EXIT_AFTER_PHY_PWR_COLLAPSE = common dso_local global i32 0, align 4
@UFS_PHY_POWER_DOWN_CONTROL = common dso_local global i64 0, align 8
@QSERDES_COM_SYSCLK_EN_SEL_TXBAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_qcom_phy*, i32)* @ufs_qcom_phy_qmp_20nm_power_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_qcom_phy_qmp_20nm_power_control(%struct.ufs_qcom_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_qcom_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ufs_qcom_phy* %0, %struct.ufs_qcom_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %7 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @UFS_QCOM_PHY_QUIRK_HIBERN8_EXIT_AFTER_PHY_PWR_COLLAPSE, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %15 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UFS_PHY_POWER_DOWN_CONTROL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel_relaxed(i32 1, i64 %18)
  %20 = call i32 (...) @mb()
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %13
  %24 = call i32 @usleep_range(i32 1, i32 2)
  %25 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %26 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QSERDES_COM_SYSCLK_EN_SEL_TXBAND, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel_relaxed(i32 10, i64 %29)
  %31 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %32 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @QSERDES_COM_SYSCLK_EN_SEL_TXBAND, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel_relaxed(i32 8, i64 %35)
  %37 = call i32 (...) @mb()
  br label %38

38:                                               ; preds = %23, %13
  br label %64

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %44 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @QSERDES_COM_SYSCLK_EN_SEL_TXBAND, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel_relaxed(i32 10, i64 %47)
  %49 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %50 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @QSERDES_COM_SYSCLK_EN_SEL_TXBAND, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel_relaxed(i32 2, i64 %53)
  %55 = call i32 (...) @mb()
  br label %56

56:                                               ; preds = %42, %39
  %57 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %3, align 8
  %58 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @UFS_PHY_POWER_DOWN_CONTROL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel_relaxed(i32 0, i64 %61)
  %63 = call i32 (...) @mb()
  br label %64

64:                                               ; preds = %56, %38
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
