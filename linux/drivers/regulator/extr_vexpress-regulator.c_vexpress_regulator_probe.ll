; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_vexpress-regulator.c_vexpress_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_vexpress-regulator.c_vexpress_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.regulator_desc = type { i32, i32*, i32, i32, i32 }
%struct.regulator_init_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.regulator_config = type { i32, %struct.regulator_init_data*, %struct.TYPE_8__*, %struct.regulator_dev* }
%struct.regulator_dev = type { i32 }
%struct.regmap = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vexpress_regulator_ops = common dso_local global i32 0, align 4
@vexpress_regulator_ops_ro = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vexpress_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vexpress_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regulator_desc*, align 8
  %5 = alloca %struct.regulator_init_data*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.regmap*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.regulator_desc* @devm_kzalloc(%struct.TYPE_8__* %11, i32 32, i32 %12)
  store %struct.regulator_desc* %13, %struct.regulator_desc** %4, align 8
  %14 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %15 = icmp ne %struct.regulator_desc* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %105

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.regulator_dev* @devm_regmap_init_vexpress_config(%struct.TYPE_8__* %21)
  %23 = bitcast %struct.regulator_dev* %22 to %struct.regmap*
  store %struct.regmap* %23, %struct.regmap** %8, align 8
  %24 = load %struct.regmap*, %struct.regmap** %8, align 8
  %25 = bitcast %struct.regmap* %24 to %struct.regulator_dev*
  %26 = call i64 @IS_ERR(%struct.regulator_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.regmap*, %struct.regmap** %8, align 8
  %30 = bitcast %struct.regmap* %29 to %struct.regulator_dev*
  %31 = call i32 @PTR_ERR(%struct.regulator_dev* %30)
  store i32 %31, i32* %2, align 4
  br label %105

32:                                               ; preds = %19
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_name(%struct.TYPE_8__* %34)
  %36 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %37 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %39 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %40 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @THIS_MODULE, align 4
  %42 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %43 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %45 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %53 = call %struct.regulator_init_data* @of_get_regulator_init_data(%struct.TYPE_8__* %47, i32 %51, %struct.regulator_desc* %52)
  store %struct.regulator_init_data* %53, %struct.regulator_init_data** %5, align 8
  %54 = load %struct.regulator_init_data*, %struct.regulator_init_data** %5, align 8
  %55 = icmp ne %struct.regulator_init_data* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %32
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %105

59:                                               ; preds = %32
  %60 = load %struct.regulator_init_data*, %struct.regulator_init_data** %5, align 8
  %61 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.regulator_init_data*, %struct.regulator_init_data** %5, align 8
  %64 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load %struct.regulator_init_data*, %struct.regulator_init_data** %5, align 8
  %70 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %76 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %75, i32 0, i32 1
  store i32* @vexpress_regulator_ops, i32** %76, align 8
  br label %80

77:                                               ; preds = %68, %59
  %78 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %79 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %78, i32 0, i32 1
  store i32* @vexpress_regulator_ops_ro, i32** %79, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.regmap*, %struct.regmap** %8, align 8
  %82 = bitcast %struct.regmap* %81 to %struct.regulator_dev*
  %83 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store %struct.regulator_dev* %82, %struct.regulator_dev** %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %86, align 8
  %87 = load %struct.regulator_init_data*, %struct.regulator_init_data** %5, align 8
  %88 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.regulator_init_data* %87, %struct.regulator_init_data** %88, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %97 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_8__* %95, %struct.regulator_desc* %96, %struct.regulator_config* %6)
  store %struct.regulator_dev* %97, %struct.regulator_dev** %7, align 8
  %98 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %99 = call i64 @IS_ERR(%struct.regulator_dev* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %80
  %102 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %103 = call i32 @PTR_ERR(%struct.regulator_dev* %102)
  store i32 %103, i32* %2, align 4
  br label %105

104:                                              ; preds = %80
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %101, %56, %28, %16
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.regulator_desc* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #2

declare dso_local %struct.regulator_dev* @devm_regmap_init_vexpress_config(%struct.TYPE_8__*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #2

declare dso_local %struct.regulator_init_data* @of_get_regulator_init_data(%struct.TYPE_8__*, i32, %struct.regulator_desc*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_8__*, %struct.regulator_desc*, %struct.regulator_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
