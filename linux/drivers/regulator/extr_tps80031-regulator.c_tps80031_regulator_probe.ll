; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tps80031_platform_data = type { %struct.tps80031_regulator_platform_data** }
%struct.tps80031_regulator_platform_data = type { i32, i32, i32* }
%struct.tps80031_regulator = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_7__* }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { i32*, i32, %struct.tps80031_regulator*, %struct.TYPE_7__* }
%struct.tps80031 = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPS80031_REGULATOR_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps80031_rinfo = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"regulator config failed, e %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"pwr_req config failed, err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"register regulator failed %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps80031_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps80031_platform_data*, align 8
  %5 = alloca %struct.tps80031_regulator_platform_data*, align 8
  %6 = alloca %struct.tps80031_regulator*, align 8
  %7 = alloca %struct.tps80031_regulator*, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca %struct.regulator_config, align 8
  %10 = alloca %struct.tps80031*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = bitcast %struct.regulator_config* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.tps80031* @dev_get_drvdata(i32 %17)
  store %struct.tps80031* %18, %struct.tps80031** %10, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.tps80031_platform_data* @dev_get_platdata(i32 %22)
  store %struct.tps80031_platform_data* %23, %struct.tps80031_platform_data** %4, align 8
  %24 = load %struct.tps80031_platform_data*, %struct.tps80031_platform_data** %4, align 8
  %25 = icmp ne %struct.tps80031_platform_data* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %173

32:                                               ; preds = %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @TPS80031_REGULATOR_MAX, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.tps80031_regulator* @devm_kcalloc(%struct.TYPE_7__* %34, i32 %35, i32 24, i32 %36)
  store %struct.tps80031_regulator* %37, %struct.tps80031_regulator** %7, align 8
  %38 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %7, align 8
  %39 = icmp ne %struct.tps80031_regulator* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %173

43:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %166, %43
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @TPS80031_REGULATOR_MAX, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %169

48:                                               ; preds = %44
  %49 = load %struct.tps80031_platform_data*, %struct.tps80031_platform_data** %4, align 8
  %50 = getelementptr inbounds %struct.tps80031_platform_data, %struct.tps80031_platform_data* %49, i32 0, i32 0
  %51 = load %struct.tps80031_regulator_platform_data**, %struct.tps80031_regulator_platform_data*** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.tps80031_regulator_platform_data*, %struct.tps80031_regulator_platform_data** %51, i64 %53
  %55 = load %struct.tps80031_regulator_platform_data*, %struct.tps80031_regulator_platform_data** %54, align 8
  store %struct.tps80031_regulator_platform_data* %55, %struct.tps80031_regulator_platform_data** %5, align 8
  %56 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %56, i64 %58
  store %struct.tps80031_regulator* %59, %struct.tps80031_regulator** %6, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tps80031_rinfo, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %65 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %64, i32 0, i32 0
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %65, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %69 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %68, i32 0, i32 3
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %69, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %75 = call i32 @check_smps_mode_mult(i32 %73, %struct.tps80031_regulator* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 3
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %78, align 8
  %79 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 0
  store i32* null, i32** %79, align 8
  %80 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %81 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 2
  store %struct.tps80031_regulator* %80, %struct.tps80031_regulator** %81, align 8
  %82 = load %struct.tps80031*, %struct.tps80031** %10, align 8
  %83 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %86 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 1
  store i32 %91, i32* %92, align 8
  %93 = load %struct.tps80031_regulator_platform_data*, %struct.tps80031_regulator_platform_data** %5, align 8
  %94 = icmp ne %struct.tps80031_regulator_platform_data* %93, null
  br i1 %94, label %95, label %142

95:                                               ; preds = %48
  %96 = load %struct.tps80031_regulator_platform_data*, %struct.tps80031_regulator_platform_data** %5, align 8
  %97 = getelementptr inbounds %struct.tps80031_regulator_platform_data, %struct.tps80031_regulator_platform_data* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 0
  store i32* %98, i32** %99, align 8
  %100 = load %struct.tps80031_regulator_platform_data*, %struct.tps80031_regulator_platform_data** %5, align 8
  %101 = getelementptr inbounds %struct.tps80031_regulator_platform_data, %struct.tps80031_regulator_platform_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %104 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.tps80031_regulator_platform_data*, %struct.tps80031_regulator_platform_data** %5, align 8
  %106 = getelementptr inbounds %struct.tps80031_regulator_platform_data, %struct.tps80031_regulator_platform_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %109 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %115 = load %struct.tps80031_regulator_platform_data*, %struct.tps80031_regulator_platform_data** %5, align 8
  %116 = call i32 @tps80031_regulator_config(i32 %113, %struct.tps80031_regulator* %114, %struct.tps80031_regulator_platform_data* %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %95
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load i32, i32* %11, align 4
  %123 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %2, align 4
  br label %173

125:                                              ; preds = %95
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %131 = load %struct.tps80031_regulator_platform_data*, %struct.tps80031_regulator_platform_data** %5, align 8
  %132 = call i32 @tps80031_power_req_config(i32 %129, %struct.tps80031_regulator* %130, %struct.tps80031_regulator_platform_data* %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %125
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load i32, i32* %11, align 4
  %139 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %2, align 4
  br label %173

141:                                              ; preds = %125
  br label %142

142:                                              ; preds = %141, %48
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %146 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__* %144, %struct.TYPE_8__* %148, %struct.regulator_config* %9)
  store %struct.regulator_dev* %149, %struct.regulator_dev** %8, align 8
  %150 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %151 = call i64 @IS_ERR(%struct.regulator_dev* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %142
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %157 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  %163 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %164 = call i32 @PTR_ERR(%struct.regulator_dev* %163)
  store i32 %164, i32* %2, align 4
  br label %173

165:                                              ; preds = %142
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %44

169:                                              ; preds = %44
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %7, align 8
  %172 = call i32 @platform_set_drvdata(%struct.platform_device* %170, %struct.tps80031_regulator* %171)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %169, %153, %135, %119, %40, %26
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.tps80031* @dev_get_drvdata(i32) #2

declare dso_local %struct.tps80031_platform_data* @dev_get_platdata(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #2

declare dso_local %struct.tps80031_regulator* @devm_kcalloc(%struct.TYPE_7__*, i32, i32, i32) #2

declare dso_local i32 @check_smps_mode_mult(i32, %struct.tps80031_regulator*) #2

declare dso_local i32 @tps80031_regulator_config(i32, %struct.tps80031_regulator*, %struct.tps80031_regulator_platform_data*) #2

declare dso_local i32 @tps80031_power_req_config(i32, %struct.tps80031_regulator*, %struct.tps80031_regulator_platform_data*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps80031_regulator*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
