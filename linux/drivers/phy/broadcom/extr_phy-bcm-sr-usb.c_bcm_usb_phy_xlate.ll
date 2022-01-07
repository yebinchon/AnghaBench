; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-sr-usb.c_bcm_usb_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-sr-usb.c_bcm_usb_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.bcm_usb_phy_cfg = type { i64, %struct.phy* }

@EINVAL = common dso_local global i32 0, align 4
@BCM_SR_USB_COMBO_PHY = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @bcm_usb_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @bcm_usb_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.bcm_usb_phy_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.bcm_usb_phy_cfg* @dev_get_drvdata(%struct.device* %8)
  store %struct.bcm_usb_phy_cfg* %9, %struct.bcm_usb_phy_cfg** %6, align 8
  %10 = load %struct.bcm_usb_phy_cfg*, %struct.bcm_usb_phy_cfg** %6, align 8
  %11 = icmp ne %struct.bcm_usb_phy_cfg* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.phy* @ERR_PTR(i32 %14)
  store %struct.phy* %15, %struct.phy** %3, align 8
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.bcm_usb_phy_cfg*, %struct.bcm_usb_phy_cfg** %6, align 8
  %18 = getelementptr inbounds %struct.bcm_usb_phy_cfg, %struct.bcm_usb_phy_cfg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BCM_SR_USB_COMBO_PHY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %24 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.phy* @ERR_PTR(i32 %35)
  store %struct.phy* %36, %struct.phy** %3, align 8
  br label %48

37:                                               ; preds = %22
  %38 = load %struct.bcm_usb_phy_cfg*, %struct.bcm_usb_phy_cfg** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.bcm_usb_phy_cfg, %struct.bcm_usb_phy_cfg* %38, i64 %40
  %42 = getelementptr inbounds %struct.bcm_usb_phy_cfg, %struct.bcm_usb_phy_cfg* %41, i32 0, i32 1
  %43 = load %struct.phy*, %struct.phy** %42, align 8
  store %struct.phy* %43, %struct.phy** %3, align 8
  br label %48

44:                                               ; preds = %16
  %45 = load %struct.bcm_usb_phy_cfg*, %struct.bcm_usb_phy_cfg** %6, align 8
  %46 = getelementptr inbounds %struct.bcm_usb_phy_cfg, %struct.bcm_usb_phy_cfg* %45, i32 0, i32 1
  %47 = load %struct.phy*, %struct.phy** %46, align 8
  store %struct.phy* %47, %struct.phy** %3, align 8
  br label %48

48:                                               ; preds = %44, %37, %33, %12
  %49 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %49
}

declare dso_local %struct.bcm_usb_phy_cfg* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
