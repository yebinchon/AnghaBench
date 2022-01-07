; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_mxc_udc.c_fsl_udc_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_mxc_udc.c_fsl_udc_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fsl_usb2_platform_data = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@mxc_ipg_clk = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"clk_get(\22ipg\22) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@mxc_ahb_clk = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"clk_get(\22ahb\22) failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@mxc_per_clk = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"clk_get(\22per\22) failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"imx-udc-mx27\00", align 1
@FSL_USB2_PHY_ULPI = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"USB_CLK=%lu, should be 60MHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_udc_clk_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fsl_usb2_platform_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.fsl_usb2_platform_data* @dev_get_platdata(i32* %8)
  store %struct.fsl_usb2_platform_data* %9, %struct.fsl_usb2_platform_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32* @devm_clk_get(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** @mxc_ipg_clk, align 8
  %13 = load i32*, i32** @mxc_ipg_clk, align 8
  %14 = call i64 @IS_ERR(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** @mxc_ipg_clk, align 8
  %21 = call i32 @PTR_ERR(i32* %20)
  store i32 %21, i32* %2, align 4
  br label %93

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32* @devm_clk_get(i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32* %25, i32** @mxc_ahb_clk, align 8
  %26 = load i32*, i32** @mxc_ahb_clk, align 8
  %27 = call i64 @IS_ERR(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** @mxc_ahb_clk, align 8
  %34 = call i32 @PTR_ERR(i32* %33)
  store i32 %34, i32* %2, align 4
  br label %93

35:                                               ; preds = %22
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32* @devm_clk_get(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32* %38, i32** @mxc_per_clk, align 8
  %39 = load i32*, i32** @mxc_per_clk, align 8
  %40 = call i64 @IS_ERR(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32*, i32** @mxc_per_clk, align 8
  %47 = call i32 @PTR_ERR(i32* %46)
  store i32 %47, i32* %2, align 4
  br label %93

48:                                               ; preds = %35
  %49 = load i32*, i32** @mxc_ipg_clk, align 8
  %50 = call i32 @clk_prepare_enable(i32* %49)
  %51 = load i32*, i32** @mxc_ahb_clk, align 8
  %52 = call i32 @clk_prepare_enable(i32* %51)
  %53 = load i32*, i32** @mxc_per_clk, align 8
  %54 = call i32 @clk_prepare_enable(i32* %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strcmp(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %48
  %63 = load i32*, i32** @mxc_per_clk, align 8
  %64 = call i64 @clk_get_rate(i32* %63)
  store i64 %64, i64* %5, align 8
  %65 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %4, align 8
  %66 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @FSL_USB2_PHY_ULPI, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %62
  %71 = load i64, i64* %5, align 8
  %72 = icmp ult i64 %71, 59999000
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %5, align 8
  %75 = icmp ugt i64 %74, 60001000
  br i1 %75, label %76, label %83

76:                                               ; preds = %73, %70
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i64, i64* %5, align 8
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %85

83:                                               ; preds = %73, %62
  br label %84

84:                                               ; preds = %83, %48
  store i32 0, i32* %2, align 4
  br label %93

85:                                               ; preds = %76
  %86 = load i32*, i32** @mxc_ipg_clk, align 8
  %87 = call i32 @clk_disable_unprepare(i32* %86)
  %88 = load i32*, i32** @mxc_ahb_clk, align 8
  %89 = call i32 @clk_disable_unprepare(i32* %88)
  %90 = load i32*, i32** @mxc_per_clk, align 8
  %91 = call i32 @clk_disable_unprepare(i32* %90)
  store i32* null, i32** @mxc_per_clk, align 8
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %85, %84, %42, %29, %16
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.fsl_usb2_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @clk_get_rate(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
