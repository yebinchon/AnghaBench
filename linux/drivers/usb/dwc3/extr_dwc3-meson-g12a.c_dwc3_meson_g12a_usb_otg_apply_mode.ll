; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_usb_otg_apply_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_usb_otg_apply_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_meson_g12a = type { i64, i32 }

@PHY_MODE_USB_DEVICE = common dso_local global i64 0, align 8
@USB_R0 = common dso_local global i32 0, align 4
@USB_R0_U2D_ACT = common dso_local global i32 0, align 4
@USB_R0_U2D_SS_SCALEDOWN_MODE_MASK = common dso_local global i32 0, align 4
@USB_R4 = common dso_local global i32 0, align 4
@USB_R4_P21_SLEEP_M0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3_meson_g12a*)* @dwc3_meson_g12a_usb_otg_apply_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_meson_g12a_usb_otg_apply_mode(%struct.dwc3_meson_g12a* %0) #0 {
  %2 = alloca %struct.dwc3_meson_g12a*, align 8
  store %struct.dwc3_meson_g12a* %0, %struct.dwc3_meson_g12a** %2, align 8
  %3 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PHY_MODE_USB_DEVICE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %10 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @USB_R0, align 4
  %13 = load i32, i32* @USB_R0_U2D_ACT, align 4
  %14 = load i32, i32* @USB_R0_U2D_ACT, align 4
  %15 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %17 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @USB_R0, align 4
  %20 = load i32, i32* @USB_R0_U2D_SS_SCALEDOWN_MODE_MASK, align 4
  %21 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %20, i32 0)
  %22 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %23 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @USB_R4, align 4
  %26 = load i32, i32* @USB_R4_P21_SLEEP_M0, align 4
  %27 = load i32, i32* @USB_R4_P21_SLEEP_M0, align 4
  %28 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %27)
  br label %42

29:                                               ; preds = %1
  %30 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %31 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @USB_R0, align 4
  %34 = load i32, i32* @USB_R0_U2D_ACT, align 4
  %35 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %37 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @USB_R4, align 4
  %40 = load i32, i32* @USB_R4_P21_SLEEP_M0, align 4
  %41 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %29, %8
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
