; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-usb-hsic.c_qcom_usb_hsic_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-usb-hsic.c_qcom_usb_hsic_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.qcom_usb_hsic_phy = type { i32, i32, i32, i32, %struct.ulpi* }
%struct.ulpi = type { i32 }
%struct.pinctrl_state = type { i32 }

@ULPI_HSIC_IO_CAL = common dso_local global i32 0, align 4
@ULPI_HSIC_CFG = common dso_local global i32 0, align 4
@PINCTRL_STATE_DEFAULT = common dso_local global i32 0, align 4
@ULPI_IFC_CTRL = common dso_local global i32 0, align 4
@ULPI_IFC_CTRL_AUTORESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @qcom_usb_hsic_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_usb_hsic_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.qcom_usb_hsic_phy*, align 8
  %5 = alloca %struct.ulpi*, align 8
  %6 = alloca %struct.pinctrl_state*, align 8
  %7 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %8 = load %struct.phy*, %struct.phy** %3, align 8
  %9 = call %struct.qcom_usb_hsic_phy* @phy_get_drvdata(%struct.phy* %8)
  store %struct.qcom_usb_hsic_phy* %9, %struct.qcom_usb_hsic_phy** %4, align 8
  %10 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %11 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %10, i32 0, i32 4
  %12 = load %struct.ulpi*, %struct.ulpi** %11, align 8
  store %struct.ulpi* %12, %struct.ulpi** %5, align 8
  %13 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %14 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_prepare_enable(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %107

21:                                               ; preds = %1
  %22 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %23 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_prepare_enable(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %101

29:                                               ; preds = %21
  %30 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %31 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @clk_prepare_enable(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %96

37:                                               ; preds = %29
  %38 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %39 = load i32, i32* @ULPI_HSIC_IO_CAL, align 4
  %40 = call i32 @ulpi_write(%struct.ulpi* %38, i32 %39, i32 255)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %91

44:                                               ; preds = %37
  %45 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %46 = load i32, i32* @ULPI_HSIC_CFG, align 4
  %47 = call i32 @ulpi_write(%struct.ulpi* %45, i32 %46, i32 168)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %91

51:                                               ; preds = %44
  %52 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %53 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PINCTRL_STATE_DEFAULT, align 4
  %56 = call %struct.pinctrl_state* @pinctrl_lookup_state(i32 %54, i32 %55)
  store %struct.pinctrl_state* %56, %struct.pinctrl_state** %6, align 8
  %57 = load %struct.pinctrl_state*, %struct.pinctrl_state** %6, align 8
  %58 = call i64 @IS_ERR(%struct.pinctrl_state* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load %struct.pinctrl_state*, %struct.pinctrl_state** %6, align 8
  %62 = call i32 @PTR_ERR(%struct.pinctrl_state* %61)
  store i32 %62, i32* %2, align 4
  br label %107

63:                                               ; preds = %51
  %64 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %65 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pinctrl_state*, %struct.pinctrl_state** %6, align 8
  %68 = call i32 @pinctrl_select_state(i32 %66, %struct.pinctrl_state* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %91

72:                                               ; preds = %63
  %73 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %74 = load i32, i32* @ULPI_HSIC_CFG, align 4
  %75 = call i32 @ULPI_SET(i32 %74)
  %76 = call i32 @ulpi_write(%struct.ulpi* %73, i32 %75, i32 1)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %91

80:                                               ; preds = %72
  %81 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %82 = load i32, i32* @ULPI_IFC_CTRL, align 4
  %83 = call i32 @ULPI_CLR(i32 %82)
  %84 = load i32, i32* @ULPI_IFC_CTRL_AUTORESUME, align 4
  %85 = call i32 @ulpi_write(%struct.ulpi* %81, i32 %83, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %107

91:                                               ; preds = %88, %79, %71, %50, %43
  %92 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %93 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @clk_disable_unprepare(i32 %94)
  br label %96

96:                                               ; preds = %91, %36
  %97 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %98 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @clk_disable_unprepare(i32 %99)
  br label %101

101:                                              ; preds = %96, %28
  %102 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %103 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @clk_disable_unprepare(i32 %104)
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %101, %89, %60, %19
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.qcom_usb_hsic_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @ulpi_write(%struct.ulpi*, i32, i32) #1

declare dso_local %struct.pinctrl_state* @pinctrl_lookup_state(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @pinctrl_select_state(i32, %struct.pinctrl_state*) #1

declare dso_local i32 @ULPI_SET(i32) #1

declare dso_local i32 @ULPI_CLR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
