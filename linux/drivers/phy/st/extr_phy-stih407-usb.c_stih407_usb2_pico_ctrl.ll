; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stih407-usb.c_stih407_usb2_pico_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stih407-usb.c_stih407_usb2_pico_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stih407_usb2_picophy = type { i32, i32, i32 }

@STIH407_USB_PICOPHY_CTRL_PORT_MASK = common dso_local global i32 0, align 4
@STIH407_USB_PICOPHY_CTRL_PORT_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stih407_usb2_picophy*)* @stih407_usb2_pico_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stih407_usb2_pico_ctrl(%struct.stih407_usb2_picophy* %0) #0 {
  %2 = alloca %struct.stih407_usb2_picophy*, align 8
  store %struct.stih407_usb2_picophy* %0, %struct.stih407_usb2_picophy** %2, align 8
  %3 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %2, align 8
  %4 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @reset_control_deassert(i32 %5)
  %7 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %2, align 8
  %8 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %2, align 8
  %11 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @STIH407_USB_PICOPHY_CTRL_PORT_MASK, align 4
  %14 = load i32, i32* @STIH407_USB_PICOPHY_CTRL_PORT_CONF, align 4
  %15 = call i32 @regmap_update_bits(i32 %9, i32 %12, i32 %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
