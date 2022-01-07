; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra186.c_tegra186_utmi_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra186.c_tegra186_utmi_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_lane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl* }
%struct.tegra_xusb_padctl = type { %struct.device* }
%struct.device = type { i32 }
%struct.tegra_xusb_usb2_port = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"no port found for USB2 lane %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@USB_DR_MODE_HOST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to enable port %u VBUS: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @tegra186_utmi_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra186_utmi_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.tegra_xusb_lane*, align 8
  %5 = alloca %struct.tegra_xusb_padctl*, align 8
  %6 = alloca %struct.tegra_xusb_usb2_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %10 = load %struct.phy*, %struct.phy** %3, align 8
  %11 = call %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy* %10)
  store %struct.tegra_xusb_lane* %11, %struct.tegra_xusb_lane** %4, align 8
  %12 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %15, align 8
  store %struct.tegra_xusb_padctl* %16, %struct.tegra_xusb_padctl** %5, align 8
  %17 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %8, align 8
  %23 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.tegra_xusb_usb2_port* @tegra_xusb_find_usb2_port(%struct.tegra_xusb_padctl* %23, i32 %24)
  store %struct.tegra_xusb_usb2_port* %25, %struct.tegra_xusb_usb2_port** %6, align 8
  %26 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %6, align 8
  %27 = icmp ne %struct.tegra_xusb_usb2_port* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %60

34:                                               ; preds = %1
  %35 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %6, align 8
  %41 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @USB_DR_MODE_HOST, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %6, align 8
  %47 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @regulator_enable(i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.device*, %struct.device** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %39, %34
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %52, %28
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.tegra_xusb_usb2_port* @tegra_xusb_find_usb2_port(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @regulator_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
