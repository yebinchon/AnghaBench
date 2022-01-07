; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_rc5t583-regulator.c_rc5t583_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_rc5t583-regulator.c_rc5t583_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc5t583_regulator_info = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rc5t583 = type { i32, i32 }
%struct.rc5t583_platform_data = type { i32*, i32*, i32* }
%struct.regulator_config = type { i32, %struct.rc5t583_regulator_info*, i32, %struct.TYPE_5__* }
%struct.regulator_dev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"No platform data, exiting...\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RC5T583_REGULATOR_MAX = common dso_local global i32 0, align 4
@rc5t583_reg_info = common dso_local global %struct.rc5t583_regulator_info* null, align 8
@RC5T583_DS_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to configure ext control %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rc5t583_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rc5t583*, align 8
  %5 = alloca %struct.rc5t583_platform_data*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.rc5t583_regulator_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.rc5t583* @dev_get_drvdata(i32 %14)
  store %struct.rc5t583* %15, %struct.rc5t583** %4, align 8
  %16 = load %struct.rc5t583*, %struct.rc5t583** %4, align 8
  %17 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.rc5t583_platform_data* @dev_get_platdata(i32 %18)
  store %struct.rc5t583_platform_data* %19, %struct.rc5t583_platform_data** %5, align 8
  %20 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  %21 = load %struct.rc5t583_platform_data*, %struct.rc5t583_platform_data** %5, align 8
  %22 = icmp ne %struct.rc5t583_platform_data* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %116

29:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %112, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @RC5T583_REGULATOR_MAX, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %115

34:                                               ; preds = %30
  %35 = load %struct.rc5t583_regulator_info*, %struct.rc5t583_regulator_info** @rc5t583_reg_info, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.rc5t583_regulator_info, %struct.rc5t583_regulator_info* %35, i64 %37
  store %struct.rc5t583_regulator_info* %38, %struct.rc5t583_regulator_info** %8, align 8
  %39 = load %struct.rc5t583_regulator_info*, %struct.rc5t583_regulator_info** %8, align 8
  %40 = getelementptr inbounds %struct.rc5t583_regulator_info, %struct.rc5t583_regulator_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RC5T583_DS_NONE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %75

45:                                               ; preds = %34
  %46 = load %struct.rc5t583*, %struct.rc5t583** %4, align 8
  %47 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rc5t583_regulator_info*, %struct.rc5t583_regulator_info** %8, align 8
  %50 = getelementptr inbounds %struct.rc5t583_regulator_info, %struct.rc5t583_regulator_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.rc5t583_platform_data*, %struct.rc5t583_platform_data** %5, align 8
  %53 = getelementptr inbounds %struct.rc5t583_platform_data, %struct.rc5t583_platform_data* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rc5t583_platform_data*, %struct.rc5t583_platform_data** %5, align 8
  %60 = getelementptr inbounds %struct.rc5t583_platform_data, %struct.rc5t583_platform_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rc5t583_ext_power_req_config(i32 %48, i64 %51, i32 %58, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %45
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @dev_warn(%struct.TYPE_5__* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %45
  br label %75

75:                                               ; preds = %74, %44
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %78, align 8
  %79 = load %struct.rc5t583_platform_data*, %struct.rc5t583_platform_data** %5, align 8
  %80 = getelementptr inbounds %struct.rc5t583_platform_data, %struct.rc5t583_platform_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = load %struct.rc5t583_regulator_info*, %struct.rc5t583_regulator_info** %8, align 8
  %88 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.rc5t583_regulator_info* %87, %struct.rc5t583_regulator_info** %88, align 8
  %89 = load %struct.rc5t583*, %struct.rc5t583** %4, align 8
  %90 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %91, i32* %92, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load %struct.rc5t583_regulator_info*, %struct.rc5t583_regulator_info** %8, align 8
  %96 = getelementptr inbounds %struct.rc5t583_regulator_info, %struct.rc5t583_regulator_info* %95, i32 0, i32 1
  %97 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %94, %struct.TYPE_6__* %96, %struct.regulator_config* %6)
  store %struct.regulator_dev* %97, %struct.regulator_dev** %7, align 8
  %98 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %99 = call i64 @IS_ERR(%struct.regulator_dev* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %75
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.rc5t583_regulator_info*, %struct.rc5t583_regulator_info** %8, align 8
  %105 = getelementptr inbounds %struct.rc5t583_regulator_info, %struct.rc5t583_regulator_info* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %110 = call i32 @PTR_ERR(%struct.regulator_dev* %109)
  store i32 %110, i32* %2, align 4
  br label %116

111:                                              ; preds = %75
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %30

115:                                              ; preds = %30
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %101, %23
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.rc5t583* @dev_get_drvdata(i32) #1

declare dso_local %struct.rc5t583_platform_data* @dev_get_platdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @rc5t583_ext_power_req_config(i32, i64, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
