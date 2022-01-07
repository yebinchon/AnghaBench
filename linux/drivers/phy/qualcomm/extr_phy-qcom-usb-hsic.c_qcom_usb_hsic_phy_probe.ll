; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-usb-hsic.c_qcom_usb_hsic_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-usb-hsic.c_qcom_usb_hsic_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulpi = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qcom_usb_hsic_phy = type { %struct.clk*, %struct.clk*, %struct.clk*, %struct.clk*, %struct.clk*, %struct.ulpi* }
%struct.clk = type { i32 }
%struct.phy_provider = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cal\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cal_sleep\00", align 1
@qcom_usb_hsic_phy_ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ulpi*)* @qcom_usb_hsic_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_usb_hsic_phy_probe(%struct.ulpi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ulpi*, align 8
  %4 = alloca %struct.qcom_usb_hsic_phy*, align 8
  %5 = alloca %struct.phy_provider*, align 8
  %6 = alloca %struct.clk*, align 8
  store %struct.ulpi* %0, %struct.ulpi** %3, align 8
  %7 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %8 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.qcom_usb_hsic_phy* @devm_kzalloc(%struct.TYPE_6__* %8, i32 48, i32 %9)
  store %struct.qcom_usb_hsic_phy* %10, %struct.qcom_usb_hsic_phy** %4, align 8
  %11 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %12 = icmp ne %struct.qcom_usb_hsic_phy* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %106

16:                                               ; preds = %1
  %17 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %18 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %19 = call i32 @ulpi_set_drvdata(%struct.ulpi* %17, %struct.qcom_usb_hsic_phy* %18)
  %20 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %21 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %22 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %21, i32 0, i32 5
  store %struct.ulpi* %20, %struct.ulpi** %22, align 8
  %23 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %24 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %23, i32 0, i32 0
  %25 = call %struct.clk* @devm_pinctrl_get(%struct.TYPE_6__* %24)
  %26 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %27 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %26, i32 0, i32 4
  store %struct.clk* %25, %struct.clk** %27, align 8
  %28 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %29 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %28, i32 0, i32 4
  %30 = load %struct.clk*, %struct.clk** %29, align 8
  %31 = call i64 @IS_ERR(%struct.clk* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %16
  %34 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %35 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %34, i32 0, i32 4
  %36 = load %struct.clk*, %struct.clk** %35, align 8
  %37 = call i32 @PTR_ERR(%struct.clk* %36)
  store i32 %37, i32* %2, align 4
  br label %106

38:                                               ; preds = %16
  %39 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %40 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %39, i32 0, i32 0
  %41 = call %struct.clk* @devm_clk_get(%struct.TYPE_6__* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %41, %struct.clk** %6, align 8
  %42 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %43 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %42, i32 0, i32 3
  store %struct.clk* %41, %struct.clk** %43, align 8
  %44 = load %struct.clk*, %struct.clk** %6, align 8
  %45 = call i64 @IS_ERR(%struct.clk* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.clk*, %struct.clk** %6, align 8
  %49 = call i32 @PTR_ERR(%struct.clk* %48)
  store i32 %49, i32* %2, align 4
  br label %106

50:                                               ; preds = %38
  %51 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %52 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %51, i32 0, i32 0
  %53 = call %struct.clk* @devm_clk_get(%struct.TYPE_6__* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %53, %struct.clk** %6, align 8
  %54 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %55 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %54, i32 0, i32 2
  store %struct.clk* %53, %struct.clk** %55, align 8
  %56 = load %struct.clk*, %struct.clk** %6, align 8
  %57 = call i64 @IS_ERR(%struct.clk* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.clk*, %struct.clk** %6, align 8
  %61 = call i32 @PTR_ERR(%struct.clk* %60)
  store i32 %61, i32* %2, align 4
  br label %106

62:                                               ; preds = %50
  %63 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %64 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %63, i32 0, i32 0
  %65 = call %struct.clk* @devm_clk_get(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store %struct.clk* %65, %struct.clk** %6, align 8
  %66 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %67 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %66, i32 0, i32 1
  store %struct.clk* %65, %struct.clk** %67, align 8
  %68 = load %struct.clk*, %struct.clk** %6, align 8
  %69 = call i64 @IS_ERR(%struct.clk* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load %struct.clk*, %struct.clk** %6, align 8
  %73 = call i32 @PTR_ERR(%struct.clk* %72)
  store i32 %73, i32* %2, align 4
  br label %106

74:                                               ; preds = %62
  %75 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %76 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %75, i32 0, i32 0
  %77 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %78 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.clk* @devm_phy_create(%struct.TYPE_6__* %76, i32 %80, i32* @qcom_usb_hsic_phy_ops)
  %82 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %83 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %82, i32 0, i32 0
  store %struct.clk* %81, %struct.clk** %83, align 8
  %84 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %85 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %84, i32 0, i32 0
  %86 = load %struct.clk*, %struct.clk** %85, align 8
  %87 = call i64 @IS_ERR(%struct.clk* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %74
  %90 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %91 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %90, i32 0, i32 0
  %92 = load %struct.clk*, %struct.clk** %91, align 8
  %93 = call i32 @PTR_ERR(%struct.clk* %92)
  store i32 %93, i32* %2, align 4
  br label %106

94:                                               ; preds = %74
  %95 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %96 = getelementptr inbounds %struct.qcom_usb_hsic_phy, %struct.qcom_usb_hsic_phy* %95, i32 0, i32 0
  %97 = load %struct.clk*, %struct.clk** %96, align 8
  %98 = load %struct.qcom_usb_hsic_phy*, %struct.qcom_usb_hsic_phy** %4, align 8
  %99 = call i32 @phy_set_drvdata(%struct.clk* %97, %struct.qcom_usb_hsic_phy* %98)
  %100 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %101 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %100, i32 0, i32 0
  %102 = load i32, i32* @of_phy_simple_xlate, align 4
  %103 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_6__* %101, i32 %102)
  store %struct.phy_provider* %103, %struct.phy_provider** %5, align 8
  %104 = load %struct.phy_provider*, %struct.phy_provider** %5, align 8
  %105 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %104)
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %94, %89, %71, %59, %47, %33, %13
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.qcom_usb_hsic_phy* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ulpi_set_drvdata(%struct.ulpi*, %struct.qcom_usb_hsic_phy*) #1

declare dso_local %struct.clk* @devm_pinctrl_get(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.clk* @devm_phy_create(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.clk*, %struct.qcom_usb_hsic_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
