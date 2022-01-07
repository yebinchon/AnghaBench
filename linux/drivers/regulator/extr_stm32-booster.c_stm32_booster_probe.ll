; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-booster.c_stm32_booster_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-booster.c_stm32_booster_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_3__*, %struct.device_node* }
%struct.TYPE_3__ = type { i32 }
%struct.device_node = type { i32 }
%struct.regulator_config = type { i32, %struct.device_node*, %struct.device*, %struct.regulator_dev* }
%struct.regulator_dev = type { i32 }
%struct.regulator_desc = type { i32 }
%struct.regmap = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"register failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_booster_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_booster_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_desc*, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 1
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call %struct.regulator_dev* @syscon_regmap_lookup_by_phandle(%struct.device_node* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %20 = bitcast %struct.regulator_dev* %19 to %struct.regmap*
  store %struct.regmap* %20, %struct.regmap** %9, align 8
  %21 = load %struct.regmap*, %struct.regmap** %9, align 8
  %22 = bitcast %struct.regmap* %21 to %struct.regulator_dev*
  %23 = call i64 @IS_ERR(%struct.regulator_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.regmap*, %struct.regmap** %9, align 8
  %27 = bitcast %struct.regmap* %26 to %struct.regulator_dev*
  %28 = call i32 @PTR_ERR(%struct.regulator_dev* %27)
  store i32 %28, i32* %2, align 4
  br label %66

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call %struct.TYPE_4__* @of_match_device(i32 %34, %struct.device* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.regulator_desc*
  store %struct.regulator_desc* %39, %struct.regulator_desc** %7, align 8
  %40 = load %struct.regmap*, %struct.regmap** %9, align 8
  %41 = bitcast %struct.regmap* %40 to %struct.regulator_dev*
  %42 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store %struct.regulator_dev* %41, %struct.regulator_dev** %42, align 8
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.device* %43, %struct.device** %44, align 8
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.device_node* %45, %struct.device_node** %46, align 8
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %50 = call i32 @of_get_regulator_init_data(%struct.device* %47, %struct.device_node* %48, %struct.regulator_desc* %49)
  %51 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %54 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %52, %struct.regulator_desc* %53, %struct.regulator_config* %6)
  store %struct.regulator_dev* %54, %struct.regulator_dev** %8, align 8
  %55 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %56 = call i64 @IS_ERR(%struct.regulator_dev* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %29
  %59 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %60 = call i32 @PTR_ERR(%struct.regulator_dev* %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %58, %25
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.regulator_dev* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local %struct.TYPE_4__* @of_match_device(i32, %struct.device*) #2

declare dso_local i32 @of_get_regulator_init_data(%struct.device*, %struct.device_node*, %struct.regulator_desc*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, %struct.regulator_desc*, %struct.regulator_config*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
