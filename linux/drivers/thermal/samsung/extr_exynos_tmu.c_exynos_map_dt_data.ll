; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos_map_dt_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos_map_dt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.exynos_tmu_data = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8* }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tmuctrl\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to get IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to get Resource 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to ioremap memory\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@exynos4210_tmu_set_trip_temp = common dso_local global i32 0, align 4
@exynos4210_tmu_set_trip_hyst = common dso_local global i32 0, align 4
@exynos4210_tmu_initialize = common dso_local global i32 0, align 4
@exynos4210_tmu_control = common dso_local global i8* null, align 8
@exynos4210_tmu_read = common dso_local global i8* null, align 8
@exynos4210_tmu_clear_irqs = common dso_local global i8* null, align 8
@exynos4412_tmu_set_trip_temp = common dso_local global i32 0, align 4
@exynos4412_tmu_set_trip_hyst = common dso_local global i32 0, align 4
@exynos4412_tmu_initialize = common dso_local global i32 0, align 4
@exynos4412_tmu_read = common dso_local global i8* null, align 8
@exynos4412_tmu_set_emulation = common dso_local global i8* null, align 8
@exynos5433_tmu_set_trip_temp = common dso_local global i32 0, align 4
@exynos5433_tmu_set_trip_hyst = common dso_local global i32 0, align 4
@exynos5433_tmu_initialize = common dso_local global i32 0, align 4
@exynos5433_tmu_control = common dso_local global i8* null, align 8
@EXYNOS5433_G3D_BASE = common dso_local global i32 0, align 4
@exynos7_tmu_set_trip_temp = common dso_local global i32 0, align 4
@exynos7_tmu_set_trip_hyst = common dso_local global i32 0, align 4
@exynos7_tmu_initialize = common dso_local global i32 0, align 4
@exynos7_tmu_control = common dso_local global i8* null, align 8
@exynos7_tmu_read = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Platform not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TYPE_ONE_POINT_TRIMMING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to get Resource 1\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_map_dt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_map_dt_data(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.exynos_tmu_data*, align 8
  %5 = alloca %struct.resource, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.exynos_tmu_data* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.exynos_tmu_data* %7, %struct.exynos_tmu_data** %4, align 8
  %8 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %9 = icmp ne %struct.exynos_tmu_data* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %298

19:                                               ; preds = %10
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @of_alias_get_id(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %26 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %28 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %33 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %19
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @irq_of_parse_and_map(i32 %38, i32 0)
  %40 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %41 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %43 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @dev_err(%struct.TYPE_4__* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %298

52:                                               ; preds = %34
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @of_address_to_resource(i32 %56, i32 0, %struct.resource* %5)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(%struct.TYPE_4__* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %298

65:                                               ; preds = %52
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @resource_size(%struct.resource* %5)
  %71 = call i8* @devm_ioremap(%struct.TYPE_4__* %67, i32 %69, i32 %70)
  %72 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %73 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %72, i32 0, i32 18
  store i8* %71, i8** %73, align 8
  %74 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %75 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %74, i32 0, i32 18
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %65
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @dev_err(%struct.TYPE_4__* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EADDRNOTAVAIL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %298

84:                                               ; preds = %65
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i64 @of_device_get_match_data(%struct.TYPE_4__* %86)
  %88 = trunc i64 %87 to i32
  %89 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %90 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %92 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %250 [
    i32 135, label %94
    i32 136, label %125
    i32 134, label %125
    i32 133, label %125
    i32 132, label %125
    i32 131, label %125
    i32 130, label %125
    i32 129, label %173
    i32 128, label %216
  ]

94:                                               ; preds = %84
  %95 = load i32, i32* @exynos4210_tmu_set_trip_temp, align 4
  %96 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %97 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %96, i32 0, i32 17
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @exynos4210_tmu_set_trip_hyst, align 4
  %99 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %100 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %99, i32 0, i32 16
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @exynos4210_tmu_initialize, align 4
  %102 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %103 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %102, i32 0, i32 15
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** @exynos4210_tmu_control, align 8
  %105 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %106 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %105, i32 0, i32 14
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @exynos4210_tmu_read, align 8
  %108 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %109 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %108, i32 0, i32 13
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @exynos4210_tmu_clear_irqs, align 8
  %111 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %112 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %111, i32 0, i32 11
  store i8* %110, i8** %112, align 8
  %113 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %114 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %113, i32 0, i32 3
  store i32 4, i32* %114, align 4
  %115 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %116 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %115, i32 0, i32 4
  store i32 15, i32* %116, align 8
  %117 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %118 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %117, i32 0, i32 5
  store i32 7, i32* %118, align 4
  %119 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %120 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %119, i32 0, i32 6
  store i32 55, i32* %120, align 8
  %121 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %122 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %121, i32 0, i32 7
  store i32 40, i32* %122, align 4
  %123 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %124 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %123, i32 0, i32 8
  store i32 100, i32* %124, align 8
  br label %256

125:                                              ; preds = %84, %84, %84, %84, %84, %84
  %126 = load i32, i32* @exynos4412_tmu_set_trip_temp, align 4
  %127 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %128 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %127, i32 0, i32 17
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @exynos4412_tmu_set_trip_hyst, align 4
  %130 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %131 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %130, i32 0, i32 16
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @exynos4412_tmu_initialize, align 4
  %133 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %134 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %133, i32 0, i32 15
  store i32 %132, i32* %134, align 8
  %135 = load i8*, i8** @exynos4210_tmu_control, align 8
  %136 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %137 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %136, i32 0, i32 14
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** @exynos4412_tmu_read, align 8
  %139 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %140 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %139, i32 0, i32 13
  store i8* %138, i8** %140, align 8
  %141 = load i8*, i8** @exynos4412_tmu_set_emulation, align 8
  %142 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %143 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %142, i32 0, i32 12
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** @exynos4210_tmu_clear_irqs, align 8
  %145 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %146 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %145, i32 0, i32 11
  store i8* %144, i8** %146, align 8
  %147 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %148 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %147, i32 0, i32 3
  store i32 4, i32* %148, align 4
  %149 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %150 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %149, i32 0, i32 4
  store i32 8, i32* %150, align 8
  %151 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %152 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %151, i32 0, i32 5
  store i32 16, i32* %152, align 4
  %153 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %154 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %153, i32 0, i32 6
  store i32 55, i32* %154, align 8
  %155 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %156 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 131
  br i1 %158, label %159, label %167

159:                                              ; preds = %125
  %160 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %161 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 130
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %166 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %165, i32 0, i32 7
  store i32 40, i32* %166, align 4
  br label %170

167:                                              ; preds = %159, %125
  %168 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %169 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %168, i32 0, i32 7
  store i32 0, i32* %169, align 4
  br label %170

170:                                              ; preds = %167, %164
  %171 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %172 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %171, i32 0, i32 8
  store i32 100, i32* %172, align 8
  br label %256

173:                                              ; preds = %84
  %174 = load i32, i32* @exynos5433_tmu_set_trip_temp, align 4
  %175 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %176 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %175, i32 0, i32 17
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* @exynos5433_tmu_set_trip_hyst, align 4
  %178 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %179 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %178, i32 0, i32 16
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* @exynos5433_tmu_initialize, align 4
  %181 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %182 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %181, i32 0, i32 15
  store i32 %180, i32* %182, align 8
  %183 = load i8*, i8** @exynos5433_tmu_control, align 8
  %184 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %185 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %184, i32 0, i32 14
  store i8* %183, i8** %185, align 8
  %186 = load i8*, i8** @exynos4412_tmu_read, align 8
  %187 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %188 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %187, i32 0, i32 13
  store i8* %186, i8** %188, align 8
  %189 = load i8*, i8** @exynos4412_tmu_set_emulation, align 8
  %190 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %191 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %190, i32 0, i32 12
  store i8* %189, i8** %191, align 8
  %192 = load i8*, i8** @exynos4210_tmu_clear_irqs, align 8
  %193 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %194 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %193, i32 0, i32 11
  store i8* %192, i8** %194, align 8
  %195 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %196 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %195, i32 0, i32 3
  store i32 8, i32* %196, align 4
  %197 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %198 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %197, i32 0, i32 4
  store i32 8, i32* %198, align 8
  %199 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @EXYNOS5433_G3D_BASE, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %173
  %204 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %205 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %204, i32 0, i32 5
  store i32 23, i32* %205, align 4
  br label %209

206:                                              ; preds = %173
  %207 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %208 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %207, i32 0, i32 5
  store i32 16, i32* %208, align 4
  br label %209

209:                                              ; preds = %206, %203
  %210 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %211 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %210, i32 0, i32 6
  store i32 75, i32* %211, align 8
  %212 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %213 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %212, i32 0, i32 7
  store i32 40, i32* %213, align 4
  %214 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %215 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %214, i32 0, i32 8
  store i32 150, i32* %215, align 8
  br label %256

216:                                              ; preds = %84
  %217 = load i32, i32* @exynos7_tmu_set_trip_temp, align 4
  %218 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %219 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %218, i32 0, i32 17
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* @exynos7_tmu_set_trip_hyst, align 4
  %221 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %222 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %221, i32 0, i32 16
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* @exynos7_tmu_initialize, align 4
  %224 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %225 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %224, i32 0, i32 15
  store i32 %223, i32* %225, align 8
  %226 = load i8*, i8** @exynos7_tmu_control, align 8
  %227 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %228 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %227, i32 0, i32 14
  store i8* %226, i8** %228, align 8
  %229 = load i8*, i8** @exynos7_tmu_read, align 8
  %230 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %231 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %230, i32 0, i32 13
  store i8* %229, i8** %231, align 8
  %232 = load i8*, i8** @exynos4412_tmu_set_emulation, align 8
  %233 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %234 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %233, i32 0, i32 12
  store i8* %232, i8** %234, align 8
  %235 = load i8*, i8** @exynos4210_tmu_clear_irqs, align 8
  %236 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %237 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %236, i32 0, i32 11
  store i8* %235, i8** %237, align 8
  %238 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %239 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %238, i32 0, i32 3
  store i32 8, i32* %239, align 4
  %240 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %241 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %240, i32 0, i32 4
  store i32 9, i32* %241, align 8
  %242 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %243 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %242, i32 0, i32 5
  store i32 17, i32* %243, align 4
  %244 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %245 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %244, i32 0, i32 6
  store i32 75, i32* %245, align 8
  %246 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %247 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %246, i32 0, i32 7
  store i32 15, i32* %247, align 4
  %248 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %249 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %248, i32 0, i32 8
  store i32 100, i32* %249, align 8
  br label %256

250:                                              ; preds = %84
  %251 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %252 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %251, i32 0, i32 0
  %253 = call i32 @dev_err(%struct.TYPE_4__* %252, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %254 = load i32, i32* @EINVAL, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %2, align 4
  br label %298

256:                                              ; preds = %216, %209, %170, %94
  %257 = load i32, i32* @TYPE_ONE_POINT_TRIMMING, align 4
  %258 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %259 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %258, i32 0, i32 10
  store i32 %257, i32* %259, align 8
  %260 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %261 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 130
  br i1 %263, label %264, label %265

264:                                              ; preds = %256
  store i32 0, i32* %2, align 4
  br label %298

265:                                              ; preds = %256
  %266 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %267 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i64 @of_address_to_resource(i32 %269, i32 1, %struct.resource* %5)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %265
  %273 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %274 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %273, i32 0, i32 0
  %275 = call i32 @dev_err(%struct.TYPE_4__* %274, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %276 = load i32, i32* @ENODEV, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %2, align 4
  br label %298

278:                                              ; preds = %265
  %279 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %280 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @resource_size(%struct.resource* %5)
  %284 = call i8* @devm_ioremap(%struct.TYPE_4__* %280, i32 %282, i32 %283)
  %285 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %286 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %285, i32 0, i32 9
  store i8* %284, i8** %286, align 8
  %287 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %288 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %287, i32 0, i32 9
  %289 = load i8*, i8** %288, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %297, label %291

291:                                              ; preds = %278
  %292 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %293 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %292, i32 0, i32 0
  %294 = call i32 @dev_err(%struct.TYPE_4__* %293, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %295 = load i32, i32* @ENOMEM, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %2, align 4
  br label %298

297:                                              ; preds = %278
  store i32 0, i32* %2, align 4
  br label %298

298:                                              ; preds = %297, %291, %272, %264, %250, %78, %59, %46, %16
  %299 = load i32, i32* %2, align 4
  ret i32 %299
}

declare dso_local %struct.exynos_tmu_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @of_alias_get_id(i32, i8*) #1

declare dso_local i64 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i8* @devm_ioremap(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
