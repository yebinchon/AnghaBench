; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/actions/extr_owl-sps.c_owl_sps_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/actions/extr_owl-sps.c_owl_sps_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.of_device_id = type { %struct.owl_sps_info* }
%struct.owl_sps_info = type { i32 }
%struct.owl_sps = type { %struct.TYPE_8__, i32, %struct.owl_sps_info*, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"no device node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unknown compatible or missing data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@domains = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"owl-sps\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to map sps registers\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to add provider (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @owl_sps_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_sps_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.owl_sps_info*, align 8
  %6 = alloca %struct.owl_sps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %138

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call %struct.of_device_id* @of_match_device(i32 %26, %struct.TYPE_7__* %28)
  store %struct.of_device_id* %29, %struct.of_device_id** %4, align 8
  %30 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %31 = icmp ne %struct.of_device_id* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load %struct.owl_sps_info*, %struct.owl_sps_info** %34, align 8
  %36 = icmp ne %struct.owl_sps_info* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %32, %20
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %138

43:                                               ; preds = %32
  %44 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %45 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %44, i32 0, i32 0
  %46 = load %struct.owl_sps_info*, %struct.owl_sps_info** %45, align 8
  store %struct.owl_sps_info* %46, %struct.owl_sps_info** %5, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.owl_sps*, %struct.owl_sps** %6, align 8
  %50 = load i32, i32* @domains, align 4
  %51 = load %struct.owl_sps_info*, %struct.owl_sps_info** %5, align 8
  %52 = getelementptr inbounds %struct.owl_sps_info, %struct.owl_sps_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @struct_size(%struct.owl_sps* %49, i32 %50, i32 %53)
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.owl_sps* @devm_kzalloc(%struct.TYPE_7__* %48, i32 %54, i32 %55)
  store %struct.owl_sps* %56, %struct.owl_sps** %6, align 8
  %57 = load %struct.owl_sps*, %struct.owl_sps** %6, align 8
  %58 = icmp ne %struct.owl_sps* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %43
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %138

62:                                               ; preds = %43
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @of_io_request_and_map(i32 %66, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.owl_sps*, %struct.owl_sps** %6, align 8
  %69 = getelementptr inbounds %struct.owl_sps, %struct.owl_sps* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.owl_sps*, %struct.owl_sps** %6, align 8
  %71 = getelementptr inbounds %struct.owl_sps, %struct.owl_sps* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %62
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.owl_sps*, %struct.owl_sps** %6, align 8
  %80 = getelementptr inbounds %struct.owl_sps, %struct.owl_sps* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @PTR_ERR(i32 %81)
  store i32 %82, i32* %2, align 4
  br label %138

83:                                               ; preds = %62
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.owl_sps*, %struct.owl_sps** %6, align 8
  %87 = getelementptr inbounds %struct.owl_sps, %struct.owl_sps* %86, i32 0, i32 3
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %87, align 8
  %88 = load %struct.owl_sps_info*, %struct.owl_sps_info** %5, align 8
  %89 = load %struct.owl_sps*, %struct.owl_sps** %6, align 8
  %90 = getelementptr inbounds %struct.owl_sps, %struct.owl_sps* %89, i32 0, i32 2
  store %struct.owl_sps_info* %88, %struct.owl_sps_info** %90, align 8
  %91 = load %struct.owl_sps*, %struct.owl_sps** %6, align 8
  %92 = getelementptr inbounds %struct.owl_sps, %struct.owl_sps* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.owl_sps*, %struct.owl_sps** %6, align 8
  %95 = getelementptr inbounds %struct.owl_sps, %struct.owl_sps* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load %struct.owl_sps_info*, %struct.owl_sps_info** %5, align 8
  %98 = getelementptr inbounds %struct.owl_sps_info, %struct.owl_sps_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.owl_sps*, %struct.owl_sps** %6, align 8
  %101 = getelementptr inbounds %struct.owl_sps, %struct.owl_sps* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %118, %83
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.owl_sps_info*, %struct.owl_sps_info** %5, align 8
  %106 = getelementptr inbounds %struct.owl_sps_info, %struct.owl_sps_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %103
  %110 = load %struct.owl_sps*, %struct.owl_sps** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @owl_sps_init_domain(%struct.owl_sps* %110, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %2, align 4
  br label %138

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %103

121:                                              ; preds = %103
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.owl_sps*, %struct.owl_sps** %6, align 8
  %127 = getelementptr inbounds %struct.owl_sps, %struct.owl_sps* %126, i32 0, i32 0
  %128 = call i32 @of_genpd_add_provider_onecell(i32 %125, %struct.TYPE_8__* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %121
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load i32, i32* %8, align 4
  %135 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %2, align 4
  br label %138

137:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %131, %115, %75, %59, %37, %14
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_7__*) #1

declare dso_local %struct.owl_sps* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.owl_sps*, i32, i32) #1

declare dso_local i32 @of_io_request_and_map(i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @owl_sps_init_domain(%struct.owl_sps*, i32) #1

declare dso_local i32 @of_genpd_add_provider_onecell(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
