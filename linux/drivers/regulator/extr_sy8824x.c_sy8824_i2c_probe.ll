; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_sy8824x.c_sy8824_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_sy8824x.c_sy8824_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.sy8824_device_info = type { i64, %struct.device*, i32, i32 }
%struct.regulator_config = type { %struct.device_node*, %struct.sy8824_device_info*, %struct.regmap*, i64, %struct.device* }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Platform data not found!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sy8824_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to allocate regmap!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to register regulator!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sy8824_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sy8824_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.sy8824_device_info*, align 8
  %9 = alloca %struct.regulator_config, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  %17 = bitcast %struct.regulator_config* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 40, i1 false)
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sy8824_device_info* @devm_kzalloc(%struct.device* %18, i32 24, i32 %19)
  store %struct.sy8824_device_info* %20, %struct.sy8824_device_info** %8, align 8
  %21 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %8, align 8
  %22 = icmp ne %struct.sy8824_device_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %88

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %8, align 8
  %30 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %29, i32 0, i32 3
  %31 = call i64 @of_get_regulator_init_data(%struct.device* %27, %struct.device_node* %28, i32* %30)
  %32 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %8, align 8
  %33 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %8, align 8
  %35 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %26
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %88

43:                                               ; preds = %26
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %8, align 8
  %46 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %45, i32 0, i32 1
  store %struct.device* %44, %struct.device** %46, align 8
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @of_device_get_match_data(%struct.device* %47)
  %49 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %8, align 8
  %50 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %51, i32* @sy8824_regmap_config)
  store %struct.regmap* %52, %struct.regmap** %10, align 8
  %53 = load %struct.regmap*, %struct.regmap** %10, align 8
  %54 = call i64 @IS_ERR(%struct.regmap* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %43
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.regmap*, %struct.regmap** %10, align 8
  %60 = call i32 @PTR_ERR(%struct.regmap* %59)
  store i32 %60, i32* %3, align 4
  br label %88

61:                                               ; preds = %43
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %8, align 8
  %64 = call i32 @i2c_set_clientdata(%struct.i2c_client* %62, %struct.sy8824_device_info* %63)
  %65 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %8, align 8
  %66 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %65, i32 0, i32 1
  %67 = load %struct.device*, %struct.device** %66, align 8
  %68 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 4
  store %struct.device* %67, %struct.device** %68, align 8
  %69 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %8, align 8
  %70 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 3
  store i64 %71, i64* %72, align 8
  %73 = load %struct.regmap*, %struct.regmap** %10, align 8
  %74 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 2
  store %struct.regmap* %73, %struct.regmap** %74, align 8
  %75 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %8, align 8
  %76 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 1
  store %struct.sy8824_device_info* %75, %struct.sy8824_device_info** %76, align 8
  %77 = load %struct.device_node*, %struct.device_node** %7, align 8
  %78 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 0
  store %struct.device_node* %77, %struct.device_node** %78, align 8
  %79 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %8, align 8
  %80 = call i32 @sy8824_regulator_register(%struct.sy8824_device_info* %79, %struct.regulator_config* %9)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %61
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %61
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %56, %38, %23
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sy8824_device_info* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i64 @of_get_regulator_init_data(%struct.device*, %struct.device_node*, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @of_device_get_match_data(%struct.device*) #2

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.regmap*) #2

declare dso_local i32 @PTR_ERR(%struct.regmap*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sy8824_device_info*) #2

declare dso_local i32 @sy8824_regulator_register(%struct.sy8824_device_info*, %struct.regulator_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
