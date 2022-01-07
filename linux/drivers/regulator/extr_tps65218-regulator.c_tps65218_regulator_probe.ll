; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65218-regulator.c_tps65218_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65218-regulator.c_tps65218_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.platform_device = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.tps65218 = type { i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { i32, %struct.tps65218*, %struct.TYPE_8__* }

@TPS65218_NUM_REGULATOR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regulators = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65218_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65218_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps65218*, align 8
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.tps65218* @dev_get_drvdata(i32 %13)
  store %struct.tps65218* %14, %struct.tps65218** %4, align 8
  %15 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %18, align 8
  %19 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %20 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %28 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.tps65218* %27, %struct.tps65218** %28, align 8
  %29 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %30 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = load i32, i32* @TPS65218_NUM_REGULATOR, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32* @devm_kcalloc(%struct.TYPE_8__* %34, i32 %35, i32 4, i32 %36)
  %38 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %39 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %41 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %1
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %108

47:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %104, %47
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @regulators, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %107

53:                                               ; preds = %48
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @regulators, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_8__* %55, %struct.TYPE_7__* %59, %struct.regulator_config* %6)
  store %struct.regulator_dev* %60, %struct.regulator_dev** %5, align 8
  %61 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %62 = call i64 @IS_ERR(%struct.regulator_dev* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %53
  %65 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %66 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %65, i32 0, i32 2
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(%struct.TYPE_9__* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %73 = call i32 @PTR_ERR(%struct.regulator_dev* %72)
  store i32 %73, i32* %2, align 4
  br label %108

74:                                               ; preds = %53
  %75 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %76 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @regulators, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @regmap_read(i32 %77, i32 %83, i32* %9)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %108

89:                                               ; preds = %74
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @regulators, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %90, %96
  %98 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %99 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %89
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %48

107:                                              ; preds = %48
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %87, %64, %44
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.tps65218* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @devm_kcalloc(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
