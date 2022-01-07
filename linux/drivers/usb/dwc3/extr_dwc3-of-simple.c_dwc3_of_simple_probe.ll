; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-of-simple.c_dwc3_of_simple_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-of-simple.c_dwc3_of_simple_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dwc3_of_simple = type { i32, i32, i32, i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"rockchip,rk3399-dwc3\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"amlogic,meson-axg-dwc3\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"amlogic,meson-gxl-dwc3\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to get device resets, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc3_of_simple_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_of_simple_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dwc3_of_simple*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.dwc3_of_simple* @devm_kzalloc(%struct.device* %14, i32 32, i32 %15)
  store %struct.dwc3_of_simple* %16, %struct.dwc3_of_simple** %4, align 8
  %17 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %18 = icmp ne %struct.dwc3_of_simple* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %159

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.dwc3_of_simple* %24)
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %28 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %27, i32 0, i32 5
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = call i64 @of_device_is_compatible(%struct.device_node* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %34 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %22
  %36 = load %struct.device_node*, %struct.device_node** %6, align 8
  %37 = call i64 @of_device_is_compatible(%struct.device_node* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = call i64 @of_device_is_compatible(%struct.device_node* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %35
  store i32 1, i32* %8, align 4
  %44 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %45 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @of_reset_control_array_get(%struct.device_node* %47, i32 %48, i32 1, i32 1)
  %50 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %51 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %53 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %59 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %159

66:                                               ; preds = %46
  %67 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %68 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %73 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @reset_control_reset(i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %153

79:                                               ; preds = %71
  br label %89

80:                                               ; preds = %66
  %81 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %82 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @reset_control_deassert(i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %153

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %79
  %90 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %91 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %90, i32 0, i32 5
  %92 = load %struct.device*, %struct.device** %91, align 8
  %93 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %94 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %93, i32 0, i32 4
  %95 = call i32 @clk_bulk_get_all(%struct.device* %92, i32* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %142

99:                                               ; preds = %89
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %102 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %104 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %107 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @clk_bulk_prepare_enable(i32 %105, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %142

113:                                              ; preds = %99
  %114 = load %struct.device_node*, %struct.device_node** %6, align 8
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = call i32 @of_platform_populate(%struct.device_node* %114, i32* null, i32* null, %struct.device* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %127

120:                                              ; preds = %113
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = call i32 @pm_runtime_set_active(%struct.device* %121)
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = call i32 @pm_runtime_enable(%struct.device* %123)
  %125 = load %struct.device*, %struct.device** %5, align 8
  %126 = call i32 @pm_runtime_get_sync(%struct.device* %125)
  store i32 0, i32* %2, align 4
  br label %159

127:                                              ; preds = %119
  %128 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %129 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %132 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @clk_bulk_disable_unprepare(i32 %130, i32 %133)
  %135 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %136 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %139 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @clk_bulk_put_all(i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %127, %112, %98
  %143 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %144 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %149 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @reset_control_assert(i32 %150)
  br label %152

152:                                              ; preds = %147, %142
  br label %153

153:                                              ; preds = %152, %87, %78
  %154 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %4, align 8
  %155 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @reset_control_put(i32 %156)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %153, %120, %57, %19
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.dwc3_of_simple* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dwc3_of_simple*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_reset_control_array_get(%struct.device_node*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @clk_bulk_get_all(%struct.device*, i32*) #1

declare dso_local i32 @clk_bulk_prepare_enable(i32, i32) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32*, i32*, %struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i32, i32) #1

declare dso_local i32 @clk_bulk_put_all(i32, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
