; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-twl6030-usb.c_twl6030_start_srp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-twl6030-usb.c_twl6030_start_srp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_companion = type { i32 }
%struct.twl6030_usb = type { i32 }

@TWL_MODULE_USB = common dso_local global i32 0, align 4
@USB_VBUS_CTRL_SET = common dso_local global i32 0, align 4
@USB_VBUS_CTRL_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_companion*)* @twl6030_start_srp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030_start_srp(%struct.phy_companion* %0) #0 {
  %2 = alloca %struct.phy_companion*, align 8
  %3 = alloca %struct.twl6030_usb*, align 8
  store %struct.phy_companion* %0, %struct.phy_companion** %2, align 8
  %4 = load %struct.phy_companion*, %struct.phy_companion** %2, align 8
  %5 = call %struct.twl6030_usb* @comparator_to_twl(%struct.phy_companion* %4)
  store %struct.twl6030_usb* %5, %struct.twl6030_usb** %3, align 8
  %6 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %7 = load i32, i32* @TWL_MODULE_USB, align 4
  %8 = load i32, i32* @USB_VBUS_CTRL_SET, align 4
  %9 = call i32 @twl6030_writeb(%struct.twl6030_usb* %6, i32 %7, i32 36, i32 %8)
  %10 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %11 = load i32, i32* @TWL_MODULE_USB, align 4
  %12 = load i32, i32* @USB_VBUS_CTRL_SET, align 4
  %13 = call i32 @twl6030_writeb(%struct.twl6030_usb* %10, i32 %11, i32 132, i32 %12)
  %14 = call i32 @mdelay(i32 100)
  %15 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %16 = load i32, i32* @TWL_MODULE_USB, align 4
  %17 = load i32, i32* @USB_VBUS_CTRL_CLR, align 4
  %18 = call i32 @twl6030_writeb(%struct.twl6030_usb* %15, i32 %16, i32 160, i32 %17)
  ret i32 0
}

declare dso_local %struct.twl6030_usb* @comparator_to_twl(%struct.phy_companion*) #1

declare dso_local i32 @twl6030_writeb(%struct.twl6030_usb*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
