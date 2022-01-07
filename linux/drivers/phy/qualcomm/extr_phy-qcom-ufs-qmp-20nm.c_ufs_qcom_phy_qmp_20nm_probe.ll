; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ufs-qmp-20nm.c_ufs_qcom_phy_qmp_20nm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ufs-qmp-20nm.c_ufs_qcom_phy_qmp_20nm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.phy = type { i32 }
%struct.ufs_qcom_phy_qmp_20nm = type { %struct.ufs_qcom_phy }
%struct.ufs_qcom_phy = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ufs_qcom_phy_qmp_20nm_phy_ops = common dso_local global i32 0, align 4
@phy_20nm_ops = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UFS_PHY_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ufs_qcom_phy_qmp_20nm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_qcom_phy_qmp_20nm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.phy*, align 8
  %5 = alloca %struct.ufs_qcom_phy_qmp_20nm*, align 8
  %6 = alloca %struct.ufs_qcom_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ufs_qcom_phy_qmp_20nm* @devm_kzalloc(%struct.device* %10, i32 4, i32 %11)
  store %struct.ufs_qcom_phy_qmp_20nm* %12, %struct.ufs_qcom_phy_qmp_20nm** %5, align 8
  %13 = load %struct.ufs_qcom_phy_qmp_20nm*, %struct.ufs_qcom_phy_qmp_20nm** %5, align 8
  %14 = icmp ne %struct.ufs_qcom_phy_qmp_20nm* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.ufs_qcom_phy_qmp_20nm*, %struct.ufs_qcom_phy_qmp_20nm** %5, align 8
  %20 = getelementptr inbounds %struct.ufs_qcom_phy_qmp_20nm, %struct.ufs_qcom_phy_qmp_20nm* %19, i32 0, i32 0
  store %struct.ufs_qcom_phy* %20, %struct.ufs_qcom_phy** %6, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %6, align 8
  %23 = call %struct.phy* @ufs_qcom_phy_generic_probe(%struct.platform_device* %21, %struct.ufs_qcom_phy* %22, i32* @ufs_qcom_phy_qmp_20nm_phy_ops, i32* @phy_20nm_ops)
  store %struct.phy* %23, %struct.phy** %4, align 8
  %24 = load %struct.phy*, %struct.phy** %4, align 8
  %25 = icmp ne %struct.phy* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %52

29:                                               ; preds = %18
  %30 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %6, align 8
  %31 = call i32 @ufs_qcom_phy_init_clks(%struct.ufs_qcom_phy* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %52

35:                                               ; preds = %29
  %36 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %6, align 8
  %37 = call i32 @ufs_qcom_phy_init_vregulators(%struct.ufs_qcom_phy* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %52

41:                                               ; preds = %35
  %42 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %6, align 8
  %43 = call i32 @ufs_qcom_phy_qmp_20nm_advertise_quirks(%struct.ufs_qcom_phy* %42)
  %44 = load %struct.phy*, %struct.phy** %4, align 8
  %45 = load %struct.ufs_qcom_phy_qmp_20nm*, %struct.ufs_qcom_phy_qmp_20nm** %5, align 8
  %46 = call i32 @phy_set_drvdata(%struct.phy* %44, %struct.ufs_qcom_phy_qmp_20nm* %45)
  %47 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %6, align 8
  %48 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UFS_PHY_NAME, align 4
  %51 = call i32 @strlcpy(i32 %49, i32 %50, i32 4)
  br label %52

52:                                               ; preds = %41, %40, %34, %26, %15
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.ufs_qcom_phy_qmp_20nm* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.phy* @ufs_qcom_phy_generic_probe(%struct.platform_device*, %struct.ufs_qcom_phy*, i32*, i32*) #1

declare dso_local i32 @ufs_qcom_phy_init_clks(%struct.ufs_qcom_phy*) #1

declare dso_local i32 @ufs_qcom_phy_init_vregulators(%struct.ufs_qcom_phy*) #1

declare dso_local i32 @ufs_qcom_phy_qmp_20nm_advertise_quirks(%struct.ufs_qcom_phy*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.ufs_qcom_phy_qmp_20nm*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
