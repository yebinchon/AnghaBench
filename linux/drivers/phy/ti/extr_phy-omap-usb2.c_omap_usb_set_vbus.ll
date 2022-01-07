; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-usb2.c_omap_usb_set_vbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-usb2.c_omap_usb_set_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_otg = type { i32 }
%struct.omap_usb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_otg*, i32)* @omap_usb_set_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_usb_set_vbus(%struct.usb_otg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_otg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_usb*, align 8
  store %struct.usb_otg* %0, %struct.usb_otg** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %8 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.omap_usb* @phy_to_omapusb(i32 %9)
  store %struct.omap_usb* %10, %struct.omap_usb** %6, align 8
  %11 = load %struct.omap_usb*, %struct.omap_usb** %6, align 8
  %12 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.omap_usb*, %struct.omap_usb** %6, align 8
  %20 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %22, align 8
  %24 = load %struct.omap_usb*, %struct.omap_usb** %6, align 8
  %25 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 %23(%struct.TYPE_2__* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.omap_usb* @phy_to_omapusb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
