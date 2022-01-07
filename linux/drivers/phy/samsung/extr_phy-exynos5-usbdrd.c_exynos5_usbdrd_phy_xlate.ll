; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i64* }
%struct.exynos5_usbdrd_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.phy* }

@EXYNOS5_DRDPHYS_NUM = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @exynos5_usbdrd_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @exynos5_usbdrd_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.exynos5_usbdrd_phy*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.exynos5_usbdrd_phy* @dev_get_drvdata(%struct.device* %7)
  store %struct.exynos5_usbdrd_phy* %8, %struct.exynos5_usbdrd_phy** %6, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EXYNOS5_DRDPHYS_NUM, align 8
  %15 = icmp uge i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.phy* @ERR_PTR(i32 %21)
  store %struct.phy* %22, %struct.phy** %3, align 8
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %25 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %28 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.phy*, %struct.phy** %33, align 8
  store %struct.phy* %34, %struct.phy** %3, align 8
  br label %35

35:                                               ; preds = %23, %19
  %36 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %36
}

declare dso_local %struct.exynos5_usbdrd_phy* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
