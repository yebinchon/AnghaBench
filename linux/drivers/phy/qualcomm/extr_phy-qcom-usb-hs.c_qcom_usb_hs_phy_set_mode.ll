; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-usb-hs.c_qcom_usb_hs_phy_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-usb-hs.c_qcom_usb_hs_phy_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.qcom_usb_hs_phy = type { i32, i32 }

@ULPI_INT_IDGRD = common dso_local global i32 0, align 4
@ULPI_INT_SESS_VALID = common dso_local global i32 0, align 4
@ULPI_USB_INT_EN_RISE = common dso_local global i32 0, align 4
@ULPI_USB_INT_EN_FALL = common dso_local global i32 0, align 4
@ULPI_MISC_A = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ULPI_PWR_CLK_MNG_REG = common dso_local global i32 0, align 4
@ULPI_PWR_OTG_COMP_DISABLE = common dso_local global i32 0, align 4
@ULPI_MISC_A_VBUSVLDEXTSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32)* @qcom_usb_hs_phy_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_usb_hs_phy_set_mode(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qcom_usb_hs_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.phy*, %struct.phy** %5, align 8
  %13 = call %struct.qcom_usb_hs_phy* @phy_get_drvdata(%struct.phy* %12)
  store %struct.qcom_usb_hs_phy* %13, %struct.qcom_usb_hs_phy** %8, align 8
  %14 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %8, align 8
  %15 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %28 [
    i32 128, label %20
    i32 129, label %20
    i32 130, label %24
  ]

20:                                               ; preds = %18, %18
  %21 = load i32, i32* @ULPI_INT_IDGRD, align 4
  %22 = load i32, i32* %11, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %18, %20
  %25 = load i32, i32* @ULPI_INT_SESS_VALID, align 4
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %18, %24
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %8, align 8
  %31 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ULPI_USB_INT_EN_RISE, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ulpi_write(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %79

40:                                               ; preds = %29
  %41 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %8, align 8
  %42 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ULPI_USB_INT_EN_FALL, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @ulpi_write(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  br label %77

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %55 [
    i32 128, label %49
    i32 130, label %49
    i32 129, label %52
  ]

49:                                               ; preds = %47, %47
  %50 = load i32, i32* @ULPI_MISC_A, align 4
  %51 = call i32 @ULPI_SET(i32 %50)
  store i32 %51, i32* %9, align 4
  br label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @ULPI_MISC_A, align 4
  %54 = call i32 @ULPI_CLR(i32 %53)
  store i32 %54, i32* %9, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %79

58:                                               ; preds = %52, %49
  %59 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %8, align 8
  %60 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ULPI_PWR_CLK_MNG_REG, align 4
  %63 = call i32 @ULPI_SET(i32 %62)
  %64 = load i32, i32* @ULPI_PWR_OTG_COMP_DISABLE, align 4
  %65 = call i32 @ulpi_write(i32 %61, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %79

70:                                               ; preds = %58
  %71 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %8, align 8
  %72 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @ULPI_MISC_A_VBUSVLDEXTSEL, align 4
  %76 = call i32 @ulpi_write(i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %70, %40
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %68, %55, %38
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.qcom_usb_hs_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @ulpi_write(i32, i32, i32) #1

declare dso_local i32 @ULPI_SET(i32) #1

declare dso_local i32 @ULPI_CLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
