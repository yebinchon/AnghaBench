; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_pas.c_adsp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_pas.c_adsp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.adsp_data = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.qcom_adsp = type { i32, i32, i32, i32, i32, i32, i32, %struct.rproc*, %struct.TYPE_4__* }
%struct.rproc = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"firmware-name\00", align 1
@adsp_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to allocate remoteproc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@qcom_pas_handover = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adsp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.adsp_data*, align 8
  %5 = alloca %struct.qcom_adsp*, align 8
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.adsp_data* @of_device_get_match_data(%struct.TYPE_4__* %10)
  store %struct.adsp_data* %11, %struct.adsp_data** %4, align 8
  %12 = load %struct.adsp_data*, %struct.adsp_data** %4, align 8
  %13 = icmp ne %struct.adsp_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %159

17:                                               ; preds = %1
  %18 = call i32 (...) @qcom_scm_is_available()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @EPROBE_DEFER, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %159

23:                                               ; preds = %17
  %24 = load %struct.adsp_data*, %struct.adsp_data** %4, align 8
  %25 = getelementptr inbounds %struct.adsp_data, %struct.adsp_data* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @of_property_read_string(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %159

41:                                               ; preds = %34, %23
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call %struct.rproc* @rproc_alloc(%struct.TYPE_4__* %43, i32 %46, i32* @adsp_ops, i8* %47, i32 48)
  store %struct.rproc* %48, %struct.rproc** %6, align 8
  %49 = load %struct.rproc*, %struct.rproc** %6, align 8
  %50 = icmp ne %struct.rproc* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %41
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_err(%struct.TYPE_4__* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %159

57:                                               ; preds = %41
  %58 = load %struct.rproc*, %struct.rproc** %6, align 8
  %59 = getelementptr inbounds %struct.rproc, %struct.rproc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.qcom_adsp*
  store %struct.qcom_adsp* %61, %struct.qcom_adsp** %5, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %65 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %64, i32 0, i32 8
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %65, align 8
  %66 = load %struct.rproc*, %struct.rproc** %6, align 8
  %67 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %68 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %67, i32 0, i32 7
  store %struct.rproc* %66, %struct.rproc** %68, align 8
  %69 = load %struct.adsp_data*, %struct.adsp_data** %4, align 8
  %70 = getelementptr inbounds %struct.adsp_data, %struct.adsp_data* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %73 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load %struct.adsp_data*, %struct.adsp_data** %4, align 8
  %75 = getelementptr inbounds %struct.adsp_data, %struct.adsp_data* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %78 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %81 = call i32 @platform_set_drvdata(%struct.platform_device* %79, %struct.qcom_adsp* %80)
  %82 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %83 = call i32 @adsp_alloc_memory_region(%struct.qcom_adsp* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %57
  br label %155

87:                                               ; preds = %57
  %88 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %89 = call i32 @adsp_init_clock(%struct.qcom_adsp* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %155

93:                                               ; preds = %87
  %94 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %95 = call i32 @adsp_init_regulator(%struct.qcom_adsp* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %155

99:                                               ; preds = %93
  %100 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %101 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %100, i32 0, i32 4
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.rproc*, %struct.rproc** %6, align 8
  %104 = load %struct.adsp_data*, %struct.adsp_data** %4, align 8
  %105 = getelementptr inbounds %struct.adsp_data, %struct.adsp_data* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @qcom_pas_handover, align 4
  %108 = call i32 @qcom_q6v5_init(i32* %101, %struct.platform_device* %102, %struct.rproc* %103, i32 %106, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %155

112:                                              ; preds = %99
  %113 = load %struct.rproc*, %struct.rproc** %6, align 8
  %114 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %115 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %114, i32 0, i32 3
  %116 = call i32 @qcom_add_glink_subdev(%struct.rproc* %113, i32* %115)
  %117 = load %struct.rproc*, %struct.rproc** %6, align 8
  %118 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %119 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %118, i32 0, i32 2
  %120 = call i32 @qcom_add_smd_subdev(%struct.rproc* %117, i32* %119)
  %121 = load %struct.rproc*, %struct.rproc** %6, align 8
  %122 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %123 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %122, i32 0, i32 1
  %124 = load %struct.adsp_data*, %struct.adsp_data** %4, align 8
  %125 = getelementptr inbounds %struct.adsp_data, %struct.adsp_data* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @qcom_add_ssr_subdev(%struct.rproc* %121, i32* %123, i32 %126)
  %128 = load %struct.rproc*, %struct.rproc** %6, align 8
  %129 = load %struct.adsp_data*, %struct.adsp_data** %4, align 8
  %130 = getelementptr inbounds %struct.adsp_data, %struct.adsp_data* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.adsp_data*, %struct.adsp_data** %4, align 8
  %133 = getelementptr inbounds %struct.adsp_data, %struct.adsp_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @qcom_add_sysmon_subdev(%struct.rproc* %128, i32 %131, i32 %134)
  %136 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %137 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %139 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @IS_ERR(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %112
  %144 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %145 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @PTR_ERR(i32 %146)
  store i32 %147, i32* %8, align 4
  br label %155

148:                                              ; preds = %112
  %149 = load %struct.rproc*, %struct.rproc** %6, align 8
  %150 = call i32 @rproc_add(%struct.rproc* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %155

154:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %159

155:                                              ; preds = %153, %143, %111, %98, %92, %86
  %156 = load %struct.rproc*, %struct.rproc** %6, align 8
  %157 = call i32 @rproc_free(%struct.rproc* %156)
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %155, %154, %51, %39, %20, %14
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.adsp_data* @of_device_get_match_data(%struct.TYPE_4__*) #1

declare dso_local i32 @qcom_scm_is_available(...) #1

declare dso_local i32 @of_property_read_string(i32, i8*, i8**) #1

declare dso_local %struct.rproc* @rproc_alloc(%struct.TYPE_4__*, i32, i32*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qcom_adsp*) #1

declare dso_local i32 @adsp_alloc_memory_region(%struct.qcom_adsp*) #1

declare dso_local i32 @adsp_init_clock(%struct.qcom_adsp*) #1

declare dso_local i32 @adsp_init_regulator(%struct.qcom_adsp*) #1

declare dso_local i32 @qcom_q6v5_init(i32*, %struct.platform_device*, %struct.rproc*, i32, i32) #1

declare dso_local i32 @qcom_add_glink_subdev(%struct.rproc*, i32*) #1

declare dso_local i32 @qcom_add_smd_subdev(%struct.rproc*, i32*) #1

declare dso_local i32 @qcom_add_ssr_subdev(%struct.rproc*, i32*, i32) #1

declare dso_local i32 @qcom_add_sysmon_subdev(%struct.rproc*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @rproc_add(%struct.rproc*) #1

declare dso_local i32 @rproc_free(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
