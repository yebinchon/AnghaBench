; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5250-usb2.c_exynos5250_isol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5250-usb2.c_exynos5250_isol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_usb2_phy_instance = type { %struct.TYPE_2__*, %struct.samsung_usb2_phy_driver* }
%struct.TYPE_2__ = type { i32 }
%struct.samsung_usb2_phy_driver = type { i32 }

@EXYNOS_5250_USB_ISOL_OTG_OFFSET = common dso_local global i32 0, align 4
@EXYNOS_5250_USB_ISOL_OTG = common dso_local global i32 0, align 4
@EXYNOS_5250_USB_ISOL_HOST_OFFSET = common dso_local global i32 0, align 4
@EXYNOS_5250_USB_ISOL_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_usb2_phy_instance*, i32)* @exynos5250_isol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5250_isol(%struct.samsung_usb2_phy_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.samsung_usb2_phy_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.samsung_usb2_phy_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.samsung_usb2_phy_instance* %0, %struct.samsung_usb2_phy_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %9 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %8, i32 0, i32 1
  %10 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %9, align 8
  store %struct.samsung_usb2_phy_driver* %10, %struct.samsung_usb2_phy_driver** %5, align 8
  %11 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %12 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %22 [
    i32 129, label %16
    i32 128, label %19
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @EXYNOS_5250_USB_ISOL_OTG_OFFSET, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @EXYNOS_5250_USB_ISOL_OTG, align 4
  store i32 %18, i32* %7, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @EXYNOS_5250_USB_ISOL_HOST_OFFSET, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @EXYNOS_5250_USB_ISOL_HOST, align 4
  store i32 %21, i32* %7, align 4
  br label %23

22:                                               ; preds = %2
  br label %37

23:                                               ; preds = %19, %16
  %24 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %25 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 0, %31 ], [ %33, %32 ]
  %36 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %35)
  br label %37

37:                                               ; preds = %34, %22
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
