; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_usb3_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_usb3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_meson_g12a = type { i32 }

@USB_R3 = common dso_local global i32 0, align 4
@USB_R3_P30_SSC_RANGE_MASK = common dso_local global i32 0, align 4
@USB_R3_P30_REF_SSP_EN = common dso_local global i32 0, align 4
@USB_R3_P30_SSC_ENABLE = common dso_local global i32 0, align 4
@USB_R2 = common dso_local global i32 0, align 4
@USB_R2_P30_PCS_TX_DEEMPH_3P5DB_MASK = common dso_local global i32 0, align 4
@USB_R2_P30_PCS_TX_DEEMPH_6DB_MASK = common dso_local global i32 0, align 4
@USB_R1 = common dso_local global i32 0, align 4
@USB_R1_U3H_HOST_PORT_POWER_CONTROL_PRESENT = common dso_local global i32 0, align 4
@USB_R1_P30_PCS_TX_SWING_FULL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3_meson_g12a*)* @dwc3_meson_g12a_usb3_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_meson_g12a_usb3_init(%struct.dwc3_meson_g12a* %0) #0 {
  %2 = alloca %struct.dwc3_meson_g12a*, align 8
  store %struct.dwc3_meson_g12a* %0, %struct.dwc3_meson_g12a** %2, align 8
  %3 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @USB_R3, align 4
  %7 = load i32, i32* @USB_R3_P30_SSC_RANGE_MASK, align 4
  %8 = load i32, i32* @USB_R3_P30_REF_SSP_EN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @USB_R3_P30_SSC_ENABLE, align 4
  %11 = load i32, i32* @USB_R3_P30_SSC_RANGE_MASK, align 4
  %12 = call i32 @FIELD_PREP(i32 %11, i32 2)
  %13 = or i32 %10, %12
  %14 = load i32, i32* @USB_R3_P30_REF_SSP_EN, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %9, i32 %15)
  %17 = call i32 @udelay(i32 2)
  %18 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %19 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @USB_R2, align 4
  %22 = load i32, i32* @USB_R2_P30_PCS_TX_DEEMPH_3P5DB_MASK, align 4
  %23 = load i32, i32* @USB_R2_P30_PCS_TX_DEEMPH_3P5DB_MASK, align 4
  %24 = call i32 @FIELD_PREP(i32 %23, i32 21)
  %25 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %24)
  %26 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %27 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB_R2, align 4
  %30 = load i32, i32* @USB_R2_P30_PCS_TX_DEEMPH_6DB_MASK, align 4
  %31 = load i32, i32* @USB_R2_P30_PCS_TX_DEEMPH_6DB_MASK, align 4
  %32 = call i32 @FIELD_PREP(i32 %31, i32 32)
  %33 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %32)
  %34 = call i32 @udelay(i32 2)
  %35 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %36 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @USB_R1, align 4
  %39 = load i32, i32* @USB_R1_U3H_HOST_PORT_POWER_CONTROL_PRESENT, align 4
  %40 = load i32, i32* @USB_R1_U3H_HOST_PORT_POWER_CONTROL_PRESENT, align 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %2, align 8
  %43 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @USB_R1, align 4
  %46 = load i32, i32* @USB_R1_P30_PCS_TX_SWING_FULL_MASK, align 4
  %47 = load i32, i32* @USB_R1_P30_PCS_TX_SWING_FULL_MASK, align 4
  %48 = call i32 @FIELD_PREP(i32 %47, i32 127)
  %49 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 %48)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
