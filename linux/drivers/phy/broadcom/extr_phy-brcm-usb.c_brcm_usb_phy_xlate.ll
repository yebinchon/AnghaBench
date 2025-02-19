; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb.c_brcm_usb_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb.c_brcm_usb_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.brcm_usb_phy_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.phy* }

@BRCM_USB_PHY_2_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Error, 2.0 Phy not found\0A\00", align 1
@BRCM_USB_PHY_3_0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Error, 3.0 Phy not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @brcm_usb_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @brcm_usb_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.brcm_usb_phy_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.brcm_usb_phy_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.brcm_usb_phy_data* %8, %struct.brcm_usb_phy_data** %6, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %54 [
    i32 0, label %14
    i32 129, label %14
    i32 1, label %34
    i32 128, label %34
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %16 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* @BRCM_USB_PHY_2_0, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.phy*, %struct.phy** %20, align 8
  %22 = icmp ne %struct.phy* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %25 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* @BRCM_USB_PHY_2_0, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.phy*, %struct.phy** %29, align 8
  store %struct.phy* %30, %struct.phy** %3, align 8
  br label %58

31:                                               ; preds = %14
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_warn(%struct.device* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %54

34:                                               ; preds = %2, %2
  %35 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %36 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* @BRCM_USB_PHY_3_0, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.phy*, %struct.phy** %40, align 8
  %42 = icmp ne %struct.phy* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %45 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* @BRCM_USB_PHY_3_0, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.phy*, %struct.phy** %49, align 8
  store %struct.phy* %50, %struct.phy** %3, align 8
  br label %58

51:                                               ; preds = %34
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @dev_warn(%struct.device* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %2, %51, %31
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.phy* @ERR_PTR(i32 %56)
  store %struct.phy* %57, %struct.phy** %3, align 8
  br label %58

58:                                               ; preds = %54, %43, %23
  %59 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %59
}

declare dso_local %struct.brcm_usb_phy_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
