; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6586x-regulator.c_tps6586x_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6586x-regulator.c_tps6586x_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.tps6586x_regulator = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.regulator_config = type { i32, %struct.tps6586x_regulator*, %struct.regulator_init_data*, %struct.TYPE_8__* }
%struct.regulator_init_data = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.tps6586x_platform_data = type { %struct.regulator_init_data** }
%struct.of_regulator_match = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Probing regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Platform data not available, exiting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TPS6586X_ID_MAX_REGULATOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid regulator ID specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"regulator %d preinit failed, e %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Slew rate config failed, e %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps6586x_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6586x_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps6586x_regulator*, align 8
  %5 = alloca %struct.regulator_config, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca %struct.regulator_init_data*, align 8
  %8 = alloca %struct.tps6586x_platform_data*, align 8
  %9 = alloca %struct.of_regulator_match*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.tps6586x_regulator* null, %struct.tps6586x_regulator** %4, align 8
  %13 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  store %struct.of_regulator_match* null, %struct.of_regulator_match** %9, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(%struct.TYPE_9__* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = call %struct.tps6586x_platform_data* @dev_get_platdata(%struct.TYPE_8__* %20)
  store %struct.tps6586x_platform_data* %21, %struct.tps6586x_platform_data** %8, align 8
  %22 = load %struct.tps6586x_platform_data*, %struct.tps6586x_platform_data** %8, align 8
  %23 = icmp ne %struct.tps6586x_platform_data* %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = call %struct.tps6586x_platform_data* @tps6586x_parse_regulator_dt(%struct.platform_device* %33, %struct.of_regulator_match** %9)
  store %struct.tps6586x_platform_data* %34, %struct.tps6586x_platform_data** %8, align 8
  br label %35

35:                                               ; preds = %32, %24, %1
  %36 = load %struct.tps6586x_platform_data*, %struct.tps6586x_platform_data** %8, align 8
  %37 = icmp ne %struct.tps6586x_platform_data* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %153

44:                                               ; preds = %35
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32 @tps6586x_get_version(%struct.TYPE_8__* %48)
  store i32 %49, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %146, %44
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @TPS6586X_ID_MAX_REGULATOR, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %149

54:                                               ; preds = %50
  %55 = load %struct.tps6586x_platform_data*, %struct.tps6586x_platform_data** %8, align 8
  %56 = getelementptr inbounds %struct.tps6586x_platform_data, %struct.tps6586x_platform_data* %55, i32 0, i32 0
  %57 = load %struct.regulator_init_data**, %struct.regulator_init_data*** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.regulator_init_data*, %struct.regulator_init_data** %57, i64 %59
  %61 = load %struct.regulator_init_data*, %struct.regulator_init_data** %60, align 8
  store %struct.regulator_init_data* %61, %struct.regulator_init_data** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call %struct.tps6586x_regulator* @find_regulator_info(i32 %62, i32 %63)
  store %struct.tps6586x_regulator* %64, %struct.tps6586x_regulator** %4, align 8
  %65 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %4, align 8
  %66 = icmp ne %struct.tps6586x_regulator* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %54
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %153

73:                                               ; preds = %54
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %4, align 8
  %79 = call i32 @tps6586x_regulator_preinit(%struct.TYPE_8__* %77, %struct.tps6586x_regulator* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %2, align 4
  br label %153

89:                                               ; preds = %73
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 3
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %94, align 8
  %95 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %96 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  store %struct.regulator_init_data* %95, %struct.regulator_init_data** %96, align 8
  %97 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %4, align 8
  %98 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store %struct.tps6586x_regulator* %97, %struct.tps6586x_regulator** %98, align 8
  %99 = load %struct.of_regulator_match*, %struct.of_regulator_match** %9, align 8
  %100 = icmp ne %struct.of_regulator_match* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %89
  %102 = load %struct.of_regulator_match*, %struct.of_regulator_match** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %102, i64 %104
  %106 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store i32 %107, i32* %108, align 8
  br label %109

109:                                              ; preds = %101, %89
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %4, align 8
  %113 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %112, i32 0, i32 0
  %114 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_9__* %111, %struct.TYPE_10__* %113, %struct.regulator_config* %5)
  store %struct.regulator_dev* %114, %struct.regulator_dev** %6, align 8
  %115 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %116 = call i64 @IS_ERR(%struct.regulator_dev* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %109
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %4, align 8
  %122 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %127 = call i32 @PTR_ERR(%struct.regulator_dev* %126)
  store i32 %127, i32* %2, align 4
  br label %153

128:                                              ; preds = %109
  %129 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %130 = icmp ne %struct.regulator_init_data* %129, null
  br i1 %130, label %131, label %145

131:                                              ; preds = %128
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %135 = call i32 @tps6586x_regulator_set_slew_rate(%struct.platform_device* %132, i32 %133, %struct.regulator_init_data* %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load i32, i32* %12, align 4
  %142 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %2, align 4
  br label %153

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %144, %128
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %50

149:                                              ; preds = %50
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %152 = call i32 @platform_set_drvdata(%struct.platform_device* %150, %struct.regulator_dev* %151)
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %149, %138, %118, %82, %67, %38
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*) #2

declare dso_local %struct.tps6586x_platform_data* @dev_get_platdata(%struct.TYPE_8__*) #2

declare dso_local %struct.tps6586x_platform_data* @tps6586x_parse_regulator_dt(%struct.platform_device*, %struct.of_regulator_match**) #2

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #2

declare dso_local i32 @tps6586x_get_version(%struct.TYPE_8__*) #2

declare dso_local %struct.tps6586x_regulator* @find_regulator_info(i32, i32) #2

declare dso_local i32 @tps6586x_regulator_preinit(%struct.TYPE_8__*, %struct.tps6586x_regulator*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @tps6586x_regulator_set_slew_rate(%struct.platform_device*, i32, %struct.regulator_init_data*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regulator_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
