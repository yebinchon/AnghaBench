; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ulpi.c_ulpi_set_vbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ulpi.c_ulpi_set_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_otg = type { %struct.usb_phy* }
%struct.usb_phy = type { i32 }

@ULPI_OTG_CTRL = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL_DRVVBUS = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL_DRVVBUS_EXT = common dso_local global i32 0, align 4
@ULPI_OTG_DRVVBUS = common dso_local global i32 0, align 4
@ULPI_OTG_DRVVBUS_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_otg*, i32)* @ulpi_set_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulpi_set_vbus(%struct.usb_otg* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_otg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_otg* %0, %struct.usb_otg** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_otg*, %struct.usb_otg** %3, align 8
  %8 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %7, i32 0, i32 0
  %9 = load %struct.usb_phy*, %struct.usb_phy** %8, align 8
  store %struct.usb_phy* %9, %struct.usb_phy** %5, align 8
  %10 = load %struct.usb_phy*, %struct.usb_phy** %5, align 8
  %11 = load i32, i32* @ULPI_OTG_CTRL, align 4
  %12 = call i32 @usb_phy_io_read(%struct.usb_phy* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @ULPI_OTG_CTRL_DRVVBUS, align 4
  %14 = load i32, i32* @ULPI_OTG_CTRL_DRVVBUS_EXT, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %2
  %22 = load %struct.usb_phy*, %struct.usb_phy** %5, align 8
  %23 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ULPI_OTG_DRVVBUS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @ULPI_OTG_CTRL_DRVVBUS, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %21
  %33 = load %struct.usb_phy*, %struct.usb_phy** %5, align 8
  %34 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ULPI_OTG_DRVVBUS_EXT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @ULPI_OTG_CTRL_DRVVBUS_EXT, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %32
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.usb_phy*, %struct.usb_phy** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ULPI_OTG_CTRL, align 4
  %48 = call i32 @usb_phy_io_write(%struct.usb_phy* %45, i32 %46, i32 %47)
  ret i32 %48
}

declare dso_local i32 @usb_phy_io_read(%struct.usb_phy*, i32) #1

declare dso_local i32 @usb_phy_io_write(%struct.usb_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
