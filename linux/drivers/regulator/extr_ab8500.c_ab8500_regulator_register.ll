; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.ab8500_regulator_info* }
%struct.ab8500_regulator_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.regulator_init_data = type { i32 }
%struct.device_node = type { i32 }
%struct.ab8500 = type { i32 }
%struct.regulator_config = type { %struct.device_node*, %struct.ab8500_regulator_info*, %struct.regulator_init_data*, %struct.TYPE_5__* }
%struct.regulator_dev = type { i32 }

@abx500_regulator = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@AB8500_LDO_AUX3 = common dso_local global i64 0, align 8
@ldo_vauxn_voltages = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.regulator_init_data*, i32, %struct.device_node*)* @ab8500_regulator_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_regulator_register(%struct.platform_device* %0, %struct.regulator_init_data* %1, i32 %2, %struct.device_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.regulator_init_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.ab8500*, align 8
  %11 = alloca %struct.ab8500_regulator_info*, align 8
  %12 = alloca %struct.regulator_config, align 8
  %13 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.regulator_init_data* %1, %struct.regulator_init_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.device_node* %3, %struct.device_node** %9, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ab8500* @dev_get_drvdata(i32 %17)
  store %struct.ab8500* %18, %struct.ab8500** %10, align 8
  store %struct.ab8500_regulator_info* null, %struct.ab8500_regulator_info** %11, align 8
  %19 = bitcast %struct.regulator_config* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @abx500_regulator, i32 0, i32 0), align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %20, i64 %22
  store %struct.ab8500_regulator_info* %23, %struct.ab8500_regulator_info** %11, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %11, align 8
  %27 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %26, i32 0, i32 2
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 3
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %30, align 8
  %31 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %32 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 2
  store %struct.regulator_init_data* %31, %struct.regulator_init_data** %32, align 8
  %33 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %11, align 8
  %34 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 1
  store %struct.ab8500_regulator_info* %33, %struct.ab8500_regulator_info** %34, align 8
  %35 = load %struct.device_node*, %struct.device_node** %9, align 8
  %36 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 0
  store %struct.device_node* %35, %struct.device_node** %36, align 8
  %37 = load %struct.ab8500*, %struct.ab8500** %10, align 8
  %38 = call i64 @is_ab8500_1p1_or_earlier(%struct.ab8500* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %4
  %41 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %11, align 8
  %42 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AB8500_LDO_AUX3, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load i32, i32* @ldo_vauxn_voltages, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %11, align 8
  %51 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @ldo_vauxn_voltages, align 4
  %54 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %11, align 8
  %55 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %11, align 8
  %58 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %57, i32 0, i32 0
  store i32 15, i32* %58, align 8
  br label %59

59:                                               ; preds = %47, %40
  br label %60

60:                                               ; preds = %59, %4
  %61 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %11, align 8
  %64 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %63, i32 0, i32 1
  %65 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %62, %struct.TYPE_6__* %64, %struct.regulator_config* %12)
  store %struct.regulator_dev* %65, %struct.regulator_dev** %13, align 8
  %66 = load %struct.regulator_dev*, %struct.regulator_dev** %13, align 8
  %67 = call i64 @IS_ERR(%struct.regulator_dev* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %60
  %70 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %11, align 8
  %73 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_err(%struct.TYPE_5__* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.regulator_dev*, %struct.regulator_dev** %13, align 8
  %78 = call i32 @PTR_ERR(%struct.regulator_dev* %77)
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %69
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.ab8500* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @is_ab8500_1p1_or_earlier(%struct.ab8500*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
