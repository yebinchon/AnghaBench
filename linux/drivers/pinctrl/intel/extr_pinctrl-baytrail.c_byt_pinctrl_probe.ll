; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-baytrail.c_byt_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-baytrail.c_byt_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.intel_pinctrl_soc_data = type { i32 }
%struct.acpi_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.byt_gpio = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.platform_device* }
%struct.TYPE_6__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to set soc data\0A\00", align 1
@byt_pinctrl_desc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to register pinctrl driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @byt_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_pinctrl_soc_data*, align 8
  %5 = alloca %struct.intel_pinctrl_soc_data**, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.byt_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.intel_pinctrl_soc_data* null, %struct.intel_pinctrl_soc_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.acpi_device* @ACPI_COMPANION(i32* %11)
  store %struct.acpi_device* %12, %struct.acpi_device** %6, align 8
  %13 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %14 = icmp ne %struct.acpi_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %148

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i64 @device_get_match_data(i32* %20)
  %22 = inttoptr i64 %21 to %struct.intel_pinctrl_soc_data**
  store %struct.intel_pinctrl_soc_data** %22, %struct.intel_pinctrl_soc_data*** %5, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %51, %18
  %24 = load %struct.intel_pinctrl_soc_data**, %struct.intel_pinctrl_soc_data*** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %24, i64 %26
  %28 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %27, align 8
  %29 = icmp ne %struct.intel_pinctrl_soc_data* %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %23
  %31 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.intel_pinctrl_soc_data**, %struct.intel_pinctrl_soc_data*** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %35, i64 %37
  %39 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %38, align 8
  %40 = getelementptr inbounds %struct.intel_pinctrl_soc_data, %struct.intel_pinctrl_soc_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcmp(i32 %34, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %30
  %45 = load %struct.intel_pinctrl_soc_data**, %struct.intel_pinctrl_soc_data*** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %45, i64 %47
  %49 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %48, align 8
  store %struct.intel_pinctrl_soc_data* %49, %struct.intel_pinctrl_soc_data** %4, align 8
  br label %54

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %23

54:                                               ; preds = %44, %23
  %55 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %4, align 8
  %56 = icmp ne %struct.intel_pinctrl_soc_data* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %148

60:                                               ; preds = %54
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.byt_gpio* @devm_kzalloc(i32* %62, i32 40, i32 %63)
  store %struct.byt_gpio* %64, %struct.byt_gpio** %7, align 8
  %65 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %66 = icmp ne %struct.byt_gpio* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %148

70:                                               ; preds = %60
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %73 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %72, i32 0, i32 4
  store %struct.platform_device* %71, %struct.platform_device** %73, align 8
  %74 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %75 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %4, align 8
  %76 = call i32 @byt_set_soc_data(%struct.byt_gpio* %74, %struct.intel_pinctrl_soc_data* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %2, align 4
  br label %148

84:                                               ; preds = %70
  %85 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %86 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %85, i32 0, i32 2
  %87 = bitcast %struct.TYPE_7__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 4 bitcast (%struct.TYPE_7__* @byt_pinctrl_desc to i8*), i64 12, i1 false)
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @dev_name(i32* %89)
  %91 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %92 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %95 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %100 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %103 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %102, i32 0, i32 3
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %108 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %113 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %112, i32 0, i32 2
  %114 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %115 = call i32 @devm_pinctrl_register(i32* %111, %struct.TYPE_7__* %113, %struct.byt_gpio* %114)
  %116 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %117 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %119 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @IS_ERR(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %84
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @dev_err(i32* %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %127 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %128 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @PTR_ERR(i32 %129)
  store i32 %130, i32* %2, align 4
  br label %148

131:                                              ; preds = %84
  %132 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %133 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %132, i32 0, i32 0
  %134 = call i32 @raw_spin_lock_init(i32* %133)
  %135 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %136 = call i32 @byt_gpio_probe(%struct.byt_gpio* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %2, align 4
  br label %148

141:                                              ; preds = %131
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %144 = call i32 @platform_set_drvdata(%struct.platform_device* %142, %struct.byt_gpio* %143)
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 @pm_runtime_enable(i32* %146)
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %141, %139, %123, %79, %67, %57, %15
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i64 @device_get_match_data(i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local %struct.byt_gpio* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @byt_set_soc_data(%struct.byt_gpio*, %struct.intel_pinctrl_soc_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, %struct.TYPE_7__*, %struct.byt_gpio*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @byt_gpio_probe(%struct.byt_gpio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.byt_gpio*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
