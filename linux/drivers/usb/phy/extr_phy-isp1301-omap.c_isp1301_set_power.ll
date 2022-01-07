; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-isp1301-omap.c_isp1301_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-isp1301-omap.c_isp1301_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@the_transceiver = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OTG_STATE_B_PERIPHERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_phy*, i32)* @isp1301_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1301_set_power(%struct.usb_phy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_phy* %0, %struct.usb_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @the_transceiver, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %13 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OTG_STATE_B_PERIPHERAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i32, i32* @the_transceiver, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @enable_vbus_draw(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %11
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @enable_vbus_draw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
