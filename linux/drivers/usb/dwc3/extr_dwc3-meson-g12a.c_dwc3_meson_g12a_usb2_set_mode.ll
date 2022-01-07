; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_usb2_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_usb2_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_meson_g12a = type { i32 }

@PHY_MODE_USB_HOST = common dso_local global i32 0, align 4
@U2P_R0 = common dso_local global i64 0, align 8
@U2P_REG_SIZE = common dso_local global i32 0, align 4
@U2P_R0_HOST_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3_meson_g12a*, i32, i32)* @dwc3_meson_g12a_usb2_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_meson_g12a_usb2_set_mode(%struct.dwc3_meson_g12a* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dwc3_meson_g12a*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %0, %struct.dwc3_meson_g12a** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %4, align 8
  %12 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @U2P_R0, align 8
  %15 = load i32, i32* @U2P_REG_SIZE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %14, %18
  %20 = load i32, i32* @U2P_R0_HOST_DEVICE, align 4
  %21 = load i32, i32* @U2P_R0_HOST_DEVICE, align 4
  %22 = call i32 @regmap_update_bits(i32 %13, i64 %19, i32 %20, i32 %21)
  br label %35

23:                                               ; preds = %3
  %24 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %4, align 8
  %25 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @U2P_R0, align 8
  %28 = load i32, i32* @U2P_REG_SIZE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %27, %31
  %33 = load i32, i32* @U2P_R0_HOST_DEVICE, align 4
  %34 = call i32 @regmap_update_bits(i32 %26, i64 %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %23, %10
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
