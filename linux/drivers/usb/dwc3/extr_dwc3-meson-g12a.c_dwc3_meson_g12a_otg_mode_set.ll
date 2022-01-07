; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_otg_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_otg_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_meson_g12a = type { i32, i64, i32, i32* }

@USB2_OTG_PHY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PHY_MODE_USB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"switching to Host Mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"switching to Device Mode\0A\00", align 1
@PHY_MODE_USB_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_meson_g12a*, i32)* @dwc3_meson_g12a_otg_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_meson_g12a_otg_mode_set(%struct.dwc3_meson_g12a* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc3_meson_g12a*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %0, %struct.dwc3_meson_g12a** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %4, align 8
  %8 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @USB2_OTG_PHY, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %4, align 8
  %23 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_info(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %31

26:                                               ; preds = %17
  %27 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %4, align 8
  %28 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_info(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %4, align 8
  %33 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PHY_MODE_USB_DEVICE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %4, align 8
  %42 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @regulator_disable(i64 %43)
  store i32 %44, i32* %6, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %4, align 8
  %47 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @regulator_enable(i64 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %66

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %4, align 8
  %59 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %4, align 8
  %61 = load i64, i64* @USB2_OTG_PHY, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @dwc3_meson_g12a_usb2_set_mode(%struct.dwc3_meson_g12a* %60, i64 %61, i32 %62)
  %64 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %4, align 8
  %65 = call i32 @dwc3_meson_g12a_usb_otg_apply_mode(%struct.dwc3_meson_g12a* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %56, %53, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @dwc3_meson_g12a_usb2_set_mode(%struct.dwc3_meson_g12a*, i64, i32) #1

declare dso_local i32 @dwc3_meson_g12a_usb_otg_apply_mode(%struct.dwc3_meson_g12a*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
