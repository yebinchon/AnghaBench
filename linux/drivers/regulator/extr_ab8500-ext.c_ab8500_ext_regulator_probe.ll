; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_regulator_platform_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ab8500_ext_regulator_info = type { i32, i32, i32, %struct.TYPE_8__, %struct.ab8500_ext_regulator_cfg*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.ab8500_ext_regulator_cfg = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.ab8500 = type { i32 }
%struct.regulator_config = type { %struct.TYPE_6__*, %struct.ab8500_ext_regulator_info*, %struct.TYPE_7__* }
%struct.regulator_dev = type { i32 }

@ab8500_regulator_plat_data = common dso_local global %struct.ab8500_regulator_platform_data zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"null mfd parent\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ab8500_ext_regulator_info = common dso_local global %struct.ab8500_ext_regulator_info* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Configuration error: size mismatch.\0A\00", align 1
@AB8500_EXT_SUPPLY3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s-probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab8500_ext_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_ext_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ab8500*, align 8
  %5 = alloca %struct.ab8500_regulator_platform_data*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ab8500_ext_regulator_info*, align 8
  %10 = alloca %struct.ab8500_ext_regulator_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ab8500* @dev_get_drvdata(i32 %14)
  store %struct.ab8500* %15, %struct.ab8500** %4, align 8
  store %struct.ab8500_regulator_platform_data* @ab8500_regulator_plat_data, %struct.ab8500_regulator_platform_data** %5, align 8
  %16 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %18 = icmp ne %struct.ab8500* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %120

25:                                               ; preds = %1
  %26 = load %struct.ab8500_regulator_platform_data*, %struct.ab8500_regulator_platform_data** %5, align 8
  %27 = getelementptr inbounds %struct.ab8500_regulator_platform_data, %struct.ab8500_regulator_platform_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** @ab8500_ext_regulator_info, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.ab8500_ext_regulator_info* %29)
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %120

38:                                               ; preds = %25
  %39 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %40 = call i64 @is_ab8500_2p0_or_earlier(%struct.ab8500* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** @ab8500_ext_regulator_info, align 8
  %44 = load i64, i64* @AB8500_EXT_SUPPLY3, align 8
  %45 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %43, i64 %44
  store %struct.ab8500_ext_regulator_info* %45, %struct.ab8500_ext_regulator_info** %9, align 8
  %46 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %9, align 8
  %47 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %46, i32 0, i32 0
  store i32 48, i32* %47, align 8
  %48 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %9, align 8
  %49 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %48, i32 0, i32 1
  store i32 48, i32* %49, align 4
  %50 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %9, align 8
  %51 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %50, i32 0, i32 2
  store i32 16, i32* %51, align 8
  br label %52

52:                                               ; preds = %42, %38
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %116, %52
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** @ab8500_ext_regulator_info, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.ab8500_ext_regulator_info* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %119

58:                                               ; preds = %53
  store %struct.ab8500_ext_regulator_info* null, %struct.ab8500_ext_regulator_info** %10, align 8
  %59 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** @ab8500_ext_regulator_info, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %59, i64 %61
  store %struct.ab8500_ext_regulator_info* %62, %struct.ab8500_ext_regulator_info** %10, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %10, align 8
  %66 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %65, i32 0, i32 5
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %66, align 8
  %67 = load %struct.ab8500_regulator_platform_data*, %struct.ab8500_regulator_platform_data** %5, align 8
  %68 = getelementptr inbounds %struct.ab8500_regulator_platform_data, %struct.ab8500_regulator_platform_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.ab8500_ext_regulator_cfg*
  %76 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %10, align 8
  %77 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %76, i32 0, i32 4
  store %struct.ab8500_ext_regulator_cfg* %75, %struct.ab8500_ext_regulator_cfg** %77, align 8
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %80, align 8
  %81 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %10, align 8
  %82 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.ab8500_ext_regulator_info* %81, %struct.ab8500_ext_regulator_info** %82, align 8
  %83 = load %struct.ab8500_regulator_platform_data*, %struct.ab8500_regulator_platform_data** %5, align 8
  %84 = getelementptr inbounds %struct.ab8500_regulator_platform_data, %struct.ab8500_regulator_platform_data* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %10, align 8
  %93 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %92, i32 0, i32 3
  %94 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__* %91, %struct.TYPE_8__* %93, %struct.regulator_config* %6)
  store %struct.regulator_dev* %94, %struct.regulator_dev** %7, align 8
  %95 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %96 = call i64 @IS_ERR(%struct.regulator_dev* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %58
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %10, align 8
  %102 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %107 = call i32 @PTR_ERR(%struct.regulator_dev* %106)
  store i32 %107, i32* %2, align 4
  br label %120

108:                                              ; preds = %58
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %10, align 8
  %112 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dev_dbg(%struct.TYPE_7__* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %53

119:                                              ; preds = %53
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %98, %32, %19
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.ab8500* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ab8500_ext_regulator_info*) #1

declare dso_local i64 @is_ab8500_2p0_or_earlier(%struct.ab8500*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
