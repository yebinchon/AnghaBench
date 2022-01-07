; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stih407-usb.c_stih407_usb2_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stih407-usb.c_stih407_usb2_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.stih407_usb2_picophy = type { i32, i32, i32 }

@STIH407_USB_PICOPHY_PARAM_MASK = common dso_local global i32 0, align 4
@STIH407_USB_PICOPHY_PARAM_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @stih407_usb2_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stih407_usb2_init_port(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stih407_usb2_picophy*, align 8
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.stih407_usb2_picophy* @phy_get_drvdata(%struct.phy* %6)
  store %struct.stih407_usb2_picophy* %7, %struct.stih407_usb2_picophy** %5, align 8
  %8 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %5, align 8
  %9 = call i32 @stih407_usb2_pico_ctrl(%struct.stih407_usb2_picophy* %8)
  %10 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %5, align 8
  %11 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %5, align 8
  %14 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @STIH407_USB_PICOPHY_PARAM_MASK, align 4
  %17 = load i32, i32* @STIH407_USB_PICOPHY_PARAM_DEF, align 4
  %18 = call i32 @regmap_update_bits(i32 %12, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %5, align 8
  %25 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @reset_control_deassert(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %21
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.stih407_usb2_picophy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @stih407_usb2_pico_ctrl(%struct.stih407_usb2_picophy*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
