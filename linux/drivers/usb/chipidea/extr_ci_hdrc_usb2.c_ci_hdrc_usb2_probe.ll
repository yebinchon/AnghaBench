; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_usb2.c_ci_hdrc_usb2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_usb2.c_ci_hdrc_usb2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc_platform_data = type { i32 }
%struct.platform_device = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.ci_hdrc_usb2_priv = type { i32, i32 }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ci_default_pdata = common dso_local global %struct.ci_hdrc_platform_data zeroinitializer, align 4
@ci_hdrc_usb2_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to enable the clock: %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to register ci_hdrc platform device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ci_hdrc_usb2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_hdrc_usb2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ci_hdrc_usb2_priv*, align 8
  %6 = alloca %struct.ci_hdrc_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 2
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ci_hdrc_platform_data* @dev_get_platdata(%struct.device* %11)
  store %struct.ci_hdrc_platform_data* %12, %struct.ci_hdrc_platform_data** %6, align 8
  %13 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %6, align 8
  %14 = icmp ne %struct.ci_hdrc_platform_data* %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ci_hdrc_platform_data* @devm_kmalloc(%struct.device* %16, i32 4, i32 %17)
  store %struct.ci_hdrc_platform_data* %18, %struct.ci_hdrc_platform_data** %6, align 8
  %19 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %6, align 8
  %20 = icmp ne %struct.ci_hdrc_platform_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %135

24:                                               ; preds = %15
  %25 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %6, align 8
  %26 = bitcast %struct.ci_hdrc_platform_data* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.ci_hdrc_platform_data* @ci_default_pdata to i8*), i64 4, i1 false)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load i32, i32* @ci_hdrc_usb2_of_match, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 2
  %31 = call %struct.of_device_id* @of_match_device(i32 %28, %struct.device* %30)
  store %struct.of_device_id* %31, %struct.of_device_id** %8, align 8
  %32 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %33 = icmp ne %struct.of_device_id* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %36 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %6, align 8
  %41 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %42 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ci_hdrc_platform_data*
  %45 = bitcast %struct.ci_hdrc_platform_data* %40 to i8*
  %46 = bitcast %struct.ci_hdrc_platform_data* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  br label %47

47:                                               ; preds = %39, %34, %27
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.ci_hdrc_usb2_priv* @devm_kzalloc(%struct.device* %48, i32 8, i32 %49)
  store %struct.ci_hdrc_usb2_priv* %50, %struct.ci_hdrc_usb2_priv** %5, align 8
  %51 = load %struct.ci_hdrc_usb2_priv*, %struct.ci_hdrc_usb2_priv** %5, align 8
  %52 = icmp ne %struct.ci_hdrc_usb2_priv* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %135

56:                                               ; preds = %47
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @devm_clk_get(%struct.device* %57, i32* null)
  %59 = load %struct.ci_hdrc_usb2_priv*, %struct.ci_hdrc_usb2_priv** %5, align 8
  %60 = getelementptr inbounds %struct.ci_hdrc_usb2_priv, %struct.ci_hdrc_usb2_priv* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ci_hdrc_usb2_priv*, %struct.ci_hdrc_usb2_priv** %5, align 8
  %62 = getelementptr inbounds %struct.ci_hdrc_usb2_priv, %struct.ci_hdrc_usb2_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %56
  %67 = load %struct.ci_hdrc_usb2_priv*, %struct.ci_hdrc_usb2_priv** %5, align 8
  %68 = getelementptr inbounds %struct.ci_hdrc_usb2_priv, %struct.ci_hdrc_usb2_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clk_prepare_enable(i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %135

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %56
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @dev_name(%struct.device* %80)
  %82 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %6, align 8
  %83 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %6, align 8
  %92 = call i32 @ci_hdrc_add_device(%struct.device* %84, i32 %87, i32 %90, %struct.ci_hdrc_platform_data* %91)
  %93 = load %struct.ci_hdrc_usb2_priv*, %struct.ci_hdrc_usb2_priv** %5, align 8
  %94 = getelementptr inbounds %struct.ci_hdrc_usb2_priv, %struct.ci_hdrc_usb2_priv* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ci_hdrc_usb2_priv*, %struct.ci_hdrc_usb2_priv** %5, align 8
  %96 = getelementptr inbounds %struct.ci_hdrc_usb2_priv, %struct.ci_hdrc_usb2_priv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @IS_ERR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %79
  %101 = load %struct.ci_hdrc_usb2_priv*, %struct.ci_hdrc_usb2_priv** %5, align 8
  %102 = getelementptr inbounds %struct.ci_hdrc_usb2_priv, %struct.ci_hdrc_usb2_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @PTR_ERR(i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @EPROBE_DEFER, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %109, %100
  br label %122

114:                                              ; preds = %79
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = load %struct.ci_hdrc_usb2_priv*, %struct.ci_hdrc_usb2_priv** %5, align 8
  %117 = call i32 @platform_set_drvdata(%struct.platform_device* %115, %struct.ci_hdrc_usb2_priv* %116)
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = call i32 @pm_runtime_no_callbacks(%struct.device* %118)
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call i32 @pm_runtime_enable(%struct.device* %120)
  store i32 0, i32* %2, align 4
  br label %135

122:                                              ; preds = %113
  %123 = load %struct.ci_hdrc_usb2_priv*, %struct.ci_hdrc_usb2_priv** %5, align 8
  %124 = getelementptr inbounds %struct.ci_hdrc_usb2_priv, %struct.ci_hdrc_usb2_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @IS_ERR(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = load %struct.ci_hdrc_usb2_priv*, %struct.ci_hdrc_usb2_priv** %5, align 8
  %130 = getelementptr inbounds %struct.ci_hdrc_usb2_priv, %struct.ci_hdrc_usb2_priv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @clk_disable_unprepare(i32 %131)
  br label %133

133:                                              ; preds = %128, %122
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %114, %73, %53, %21
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.ci_hdrc_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.ci_hdrc_platform_data* @devm_kmalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.ci_hdrc_usb2_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @ci_hdrc_add_device(%struct.device*, i32, i32, %struct.ci_hdrc_platform_data*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ci_hdrc_usb2_priv*) #1

declare dso_local i32 @pm_runtime_no_callbacks(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
