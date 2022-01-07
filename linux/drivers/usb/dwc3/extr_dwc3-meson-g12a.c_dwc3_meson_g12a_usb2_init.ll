; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_usb2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_usb2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_meson_g12a = type { i64, i32, i32, i32* }

@USB_DR_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@PHY_MODE_USB_DEVICE = common dso_local global i32 0, align 4
@PHY_MODE_USB_HOST = common dso_local global i32 0, align 4
@USB3_HOST_PHY = common dso_local global i32 0, align 4
@U2P_R0 = common dso_local global i64 0, align 8
@U2P_REG_SIZE = common dso_local global i32 0, align 4
@U2P_R0_POWER_ON_RESET = common dso_local global i32 0, align 4
@USB2_OTG_PHY = common dso_local global i32 0, align 4
@U2P_R0_ID_PULLUP = common dso_local global i32 0, align 4
@U2P_R0_DRV_VBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_meson_g12a*)* @dwc3_meson_g12a_usb2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_meson_g12a_usb2_init(%struct.dwc3_meson_g12a* %0) #0 {
  %2 = alloca %struct.dwc3_meson_g12a*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %0, %struct.dwc3_meson_g12a** %2, align 8
  %4 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %5 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @USB_DR_MODE_PERIPHERAL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @PHY_MODE_USB_DEVICE, align 4
  %11 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %12 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  %15 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %16 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %13, %9
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %88, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @USB3_HOST_PHY, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %91

22:                                               ; preds = %18
  %23 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %24 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %88

32:                                               ; preds = %22
  %33 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %34 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* @U2P_R0, align 8
  %37 = load i32, i32* @U2P_REG_SIZE, align 4
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %36, %40
  %42 = load i32, i32* @U2P_R0_POWER_ON_RESET, align 4
  %43 = load i32, i32* @U2P_R0_POWER_ON_RESET, align 4
  %44 = call i32 @regmap_update_bits(i32 %35, i64 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @USB2_OTG_PHY, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %32
  %49 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %50 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @U2P_R0, align 8
  %53 = load i32, i32* @U2P_REG_SIZE, align 4
  %54 = load i32, i32* %3, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %52, %56
  %58 = load i32, i32* @U2P_R0_ID_PULLUP, align 4
  %59 = load i32, i32* @U2P_R0_DRV_VBUS, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @U2P_R0_ID_PULLUP, align 4
  %62 = load i32, i32* @U2P_R0_DRV_VBUS, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @regmap_update_bits(i32 %51, i64 %57, i32 %60, i32 %63)
  %65 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %68 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dwc3_meson_g12a_usb2_set_mode(%struct.dwc3_meson_g12a* %65, i32 %66, i32 %69)
  br label %76

71:                                               ; preds = %32
  %72 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  %75 = call i32 @dwc3_meson_g12a_usb2_set_mode(%struct.dwc3_meson_g12a* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %48
  %77 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %78 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* @U2P_R0, align 8
  %81 = load i32, i32* @U2P_REG_SIZE, align 4
  %82 = load i32, i32* %3, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %80, %84
  %86 = load i32, i32* @U2P_R0_POWER_ON_RESET, align 4
  %87 = call i32 @regmap_update_bits(i32 %79, i64 %85, i32 %86, i32 0)
  br label %88

88:                                               ; preds = %76, %31
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %18

91:                                               ; preds = %18
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @dwc3_meson_g12a_usb2_set_mode(%struct.dwc3_meson_g12a*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
