; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmpd.c_rpmpd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmpd.c_rpmpd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.genpd_onecell_data = type { i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.qcom_smd_rpm = type { i32 }
%struct.rpmpd = type { %struct.TYPE_8__, i32, %struct.qcom_smd_rpm* }
%struct.rpmpd_desc = type { i64, i32, %struct.rpmpd** }

@.str = private unnamed_addr constant [34 x i8] c"Unable to retrieve handle to RPM\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"rpmpds[] with empty entry at index=%d\0A\00", align 1
@rpmpd_power_off = common dso_local global i32 0, align 4
@rpmpd_power_on = common dso_local global i32 0, align 4
@rpmpd_set_performance = common dso_local global i32 0, align 4
@rpmpd_get_performance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rpmpd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmpd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.genpd_onecell_data*, align 8
  %7 = alloca %struct.qcom_smd_rpm*, align 8
  %8 = alloca %struct.rpmpd**, align 8
  %9 = alloca %struct.rpmpd_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.qcom_smd_rpm* @dev_get_drvdata(i32 %13)
  store %struct.qcom_smd_rpm* %14, %struct.qcom_smd_rpm** %7, align 8
  %15 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %7, align 8
  %16 = icmp ne %struct.qcom_smd_rpm* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_9__* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %154

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call %struct.rpmpd_desc* @of_device_get_match_data(%struct.TYPE_9__* %25)
  store %struct.rpmpd_desc* %26, %struct.rpmpd_desc** %9, align 8
  %27 = load %struct.rpmpd_desc*, %struct.rpmpd_desc** %9, align 8
  %28 = icmp ne %struct.rpmpd_desc* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %154

32:                                               ; preds = %23
  %33 = load %struct.rpmpd_desc*, %struct.rpmpd_desc** %9, align 8
  %34 = getelementptr inbounds %struct.rpmpd_desc, %struct.rpmpd_desc* %33, i32 0, i32 2
  %35 = load %struct.rpmpd**, %struct.rpmpd*** %34, align 8
  store %struct.rpmpd** %35, %struct.rpmpd*** %8, align 8
  %36 = load %struct.rpmpd_desc*, %struct.rpmpd_desc** %9, align 8
  %37 = getelementptr inbounds %struct.rpmpd_desc, %struct.rpmpd_desc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %5, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.genpd_onecell_data* @devm_kzalloc(%struct.TYPE_9__* %40, i32 16, i32 %41)
  store %struct.genpd_onecell_data* %42, %struct.genpd_onecell_data** %6, align 8
  %43 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %6, align 8
  %44 = icmp ne %struct.genpd_onecell_data* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %154

48:                                               ; preds = %32
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.TYPE_8__** @devm_kcalloc(%struct.TYPE_9__* %50, i64 %51, i32 8, i32 %52)
  %54 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %6, align 8
  %55 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %54, i32 0, i32 1
  store %struct.TYPE_8__** %53, %struct.TYPE_8__*** %55, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %6, align 8
  %58 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %144, %48
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %5, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %147

64:                                               ; preds = %59
  %65 = load %struct.rpmpd**, %struct.rpmpd*** %8, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.rpmpd*, %struct.rpmpd** %65, i64 %67
  %69 = load %struct.rpmpd*, %struct.rpmpd** %68, align 8
  %70 = icmp ne %struct.rpmpd* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @dev_warn(%struct.TYPE_9__* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %144

76:                                               ; preds = %64
  %77 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %7, align 8
  %78 = load %struct.rpmpd**, %struct.rpmpd*** %8, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.rpmpd*, %struct.rpmpd** %78, i64 %80
  %82 = load %struct.rpmpd*, %struct.rpmpd** %81, align 8
  %83 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %82, i32 0, i32 2
  store %struct.qcom_smd_rpm* %77, %struct.qcom_smd_rpm** %83, align 8
  %84 = load %struct.rpmpd_desc*, %struct.rpmpd_desc** %9, align 8
  %85 = getelementptr inbounds %struct.rpmpd_desc, %struct.rpmpd_desc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.rpmpd**, %struct.rpmpd*** %8, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.rpmpd*, %struct.rpmpd** %87, i64 %89
  %91 = load %struct.rpmpd*, %struct.rpmpd** %90, align 8
  %92 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %91, i32 0, i32 1
  store i32 %86, i32* %92, align 8
  %93 = load i32, i32* @rpmpd_power_off, align 4
  %94 = load %struct.rpmpd**, %struct.rpmpd*** %8, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.rpmpd*, %struct.rpmpd** %94, i64 %96
  %98 = load %struct.rpmpd*, %struct.rpmpd** %97, align 8
  %99 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  store i32 %93, i32* %100, align 4
  %101 = load i32, i32* @rpmpd_power_on, align 4
  %102 = load %struct.rpmpd**, %struct.rpmpd*** %8, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.rpmpd*, %struct.rpmpd** %102, i64 %104
  %106 = load %struct.rpmpd*, %struct.rpmpd** %105, align 8
  %107 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store i32 %101, i32* %108, align 8
  %109 = load i32, i32* @rpmpd_set_performance, align 4
  %110 = load %struct.rpmpd**, %struct.rpmpd*** %8, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.rpmpd*, %struct.rpmpd** %110, i64 %112
  %114 = load %struct.rpmpd*, %struct.rpmpd** %113, align 8
  %115 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i32 %109, i32* %116, align 4
  %117 = load i32, i32* @rpmpd_get_performance, align 4
  %118 = load %struct.rpmpd**, %struct.rpmpd*** %8, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.rpmpd*, %struct.rpmpd** %118, i64 %120
  %122 = load %struct.rpmpd*, %struct.rpmpd** %121, align 8
  %123 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 %117, i32* %124, align 8
  %125 = load %struct.rpmpd**, %struct.rpmpd*** %8, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.rpmpd*, %struct.rpmpd** %125, i64 %127
  %129 = load %struct.rpmpd*, %struct.rpmpd** %128, align 8
  %130 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %129, i32 0, i32 0
  %131 = call i32 @pm_genpd_init(%struct.TYPE_8__* %130, i32* null, i32 1)
  %132 = load %struct.rpmpd**, %struct.rpmpd*** %8, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.rpmpd*, %struct.rpmpd** %132, i64 %134
  %136 = load %struct.rpmpd*, %struct.rpmpd** %135, align 8
  %137 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %136, i32 0, i32 0
  %138 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %6, align 8
  %139 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %138, i32 0, i32 1
  %140 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %140, i64 %142
  store %struct.TYPE_8__* %137, %struct.TYPE_8__** %143, align 8
  br label %144

144:                                              ; preds = %76, %71
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %59

147:                                              ; preds = %59
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %6, align 8
  %153 = call i32 @of_genpd_add_provider_onecell(i32 %151, %struct.genpd_onecell_data* %152)
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %147, %45, %29, %17
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.qcom_smd_rpm* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.rpmpd_desc* @of_device_get_match_data(%struct.TYPE_9__*) #1

declare dso_local %struct.genpd_onecell_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.TYPE_8__** @devm_kcalloc(%struct.TYPE_9__*, i64, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @of_genpd_add_provider_onecell(i32, %struct.genpd_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
