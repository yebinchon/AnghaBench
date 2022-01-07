; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_adsp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_adsp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.adsp_pil_data = type { i32, i32, i32, i32, i32, i32 }
%struct.qcom_adsp = type { i32*, i32, i32, i32, i32, %struct.rproc* }
%struct.rproc = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@adsp_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to allocate remoteproc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@qcom_adsp_pil_handover = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adsp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.adsp_pil_data*, align 8
  %5 = alloca %struct.qcom_adsp*, align 8
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.adsp_pil_data* @of_device_get_match_data(i32* %9)
  store %struct.adsp_pil_data* %10, %struct.adsp_pil_data** %4, align 8
  %11 = load %struct.adsp_pil_data*, %struct.adsp_pil_data** %4, align 8
  %12 = icmp ne %struct.adsp_pil_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %141

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.adsp_pil_data*, %struct.adsp_pil_data** %4, align 8
  %23 = getelementptr inbounds %struct.adsp_pil_data, %struct.adsp_pil_data* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.rproc* @rproc_alloc(i32* %18, i32 %21, i32* @adsp_ops, i32 %24, i32 32)
  store %struct.rproc* %25, %struct.rproc** %6, align 8
  %26 = load %struct.rproc*, %struct.rproc** %6, align 8
  %27 = icmp ne %struct.rproc* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %16
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %141

34:                                               ; preds = %16
  %35 = load %struct.rproc*, %struct.rproc** %6, align 8
  %36 = getelementptr inbounds %struct.rproc, %struct.rproc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.qcom_adsp*
  store %struct.qcom_adsp* %38, %struct.qcom_adsp** %5, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %42 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.rproc*, %struct.rproc** %6, align 8
  %44 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %45 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %44, i32 0, i32 5
  store %struct.rproc* %43, %struct.rproc** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %46, %struct.qcom_adsp* %47)
  %49 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %50 = call i32 @adsp_alloc_memory_region(%struct.qcom_adsp* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  br label %137

54:                                               ; preds = %34
  %55 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %56 = load %struct.adsp_pil_data*, %struct.adsp_pil_data** %4, align 8
  %57 = getelementptr inbounds %struct.adsp_pil_data, %struct.adsp_pil_data* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @adsp_init_clock(%struct.qcom_adsp* %55, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %137

63:                                               ; preds = %54
  %64 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %65 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @pm_runtime_enable(i32* %66)
  %68 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %69 = call i32 @adsp_init_reset(%struct.qcom_adsp* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %132

73:                                               ; preds = %63
  %74 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i32 @adsp_init_mmio(%struct.qcom_adsp* %74, %struct.platform_device* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %132

80:                                               ; preds = %73
  %81 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %82 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %81, i32 0, i32 4
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load %struct.rproc*, %struct.rproc** %6, align 8
  %85 = load %struct.adsp_pil_data*, %struct.adsp_pil_data** %4, align 8
  %86 = getelementptr inbounds %struct.adsp_pil_data, %struct.adsp_pil_data* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @qcom_adsp_pil_handover, align 4
  %89 = call i32 @qcom_q6v5_init(i32* %82, %struct.platform_device* %83, %struct.rproc* %84, i32 %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  br label %132

93:                                               ; preds = %80
  %94 = load %struct.rproc*, %struct.rproc** %6, align 8
  %95 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %96 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %95, i32 0, i32 3
  %97 = call i32 @qcom_add_glink_subdev(%struct.rproc* %94, i32* %96)
  %98 = load %struct.rproc*, %struct.rproc** %6, align 8
  %99 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %100 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %99, i32 0, i32 2
  %101 = load %struct.adsp_pil_data*, %struct.adsp_pil_data** %4, align 8
  %102 = getelementptr inbounds %struct.adsp_pil_data, %struct.adsp_pil_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @qcom_add_ssr_subdev(%struct.rproc* %98, i32* %100, i32 %103)
  %105 = load %struct.rproc*, %struct.rproc** %6, align 8
  %106 = load %struct.adsp_pil_data*, %struct.adsp_pil_data** %4, align 8
  %107 = getelementptr inbounds %struct.adsp_pil_data, %struct.adsp_pil_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.adsp_pil_data*, %struct.adsp_pil_data** %4, align 8
  %110 = getelementptr inbounds %struct.adsp_pil_data, %struct.adsp_pil_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @qcom_add_sysmon_subdev(%struct.rproc* %105, i32 %108, i32 %111)
  %113 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %114 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %116 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @IS_ERR(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %93
  %121 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %122 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @PTR_ERR(i32 %123)
  store i32 %124, i32* %7, align 4
  br label %132

125:                                              ; preds = %93
  %126 = load %struct.rproc*, %struct.rproc** %6, align 8
  %127 = call i32 @rproc_add(%struct.rproc* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %132

131:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %141

132:                                              ; preds = %130, %120, %92, %79, %72
  %133 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %134 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @pm_runtime_disable(i32* %135)
  br label %137

137:                                              ; preds = %132, %62, %53
  %138 = load %struct.rproc*, %struct.rproc** %6, align 8
  %139 = call i32 @rproc_free(%struct.rproc* %138)
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %137, %131, %28, %13
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.adsp_pil_data* @of_device_get_match_data(i32*) #1

declare dso_local %struct.rproc* @rproc_alloc(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qcom_adsp*) #1

declare dso_local i32 @adsp_alloc_memory_region(%struct.qcom_adsp*) #1

declare dso_local i32 @adsp_init_clock(%struct.qcom_adsp*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @adsp_init_reset(%struct.qcom_adsp*) #1

declare dso_local i32 @adsp_init_mmio(%struct.qcom_adsp*, %struct.platform_device*) #1

declare dso_local i32 @qcom_q6v5_init(i32*, %struct.platform_device*, %struct.rproc*, i32, i32) #1

declare dso_local i32 @qcom_add_glink_subdev(%struct.rproc*, i32*) #1

declare dso_local i32 @qcom_add_ssr_subdev(%struct.rproc*, i32*, i32) #1

declare dso_local i32 @qcom_add_sysmon_subdev(%struct.rproc*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @rproc_add(%struct.rproc*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @rproc_free(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
