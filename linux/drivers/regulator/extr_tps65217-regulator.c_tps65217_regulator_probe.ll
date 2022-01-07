; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65217-regulator.c_tps65217_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65217-regulator.c_tps65217_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.tps65217 = type { i32*, i32, i32 }
%struct.tps65217_board = type { i32* }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { i32, %struct.tps65217*, i32, i32 }

@TPS65217_NUM_REGULATOR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regulators = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65217_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65217_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps65217*, align 8
  %5 = alloca %struct.tps65217_board*, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.tps65217* @dev_get_drvdata(i32 %14)
  store %struct.tps65217* %15, %struct.tps65217** %4, align 8
  %16 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %17 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.tps65217_board* @dev_get_platdata(i32 %18)
  store %struct.tps65217_board* %19, %struct.tps65217_board** %5, align 8
  %20 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 1
  %23 = load i32, i32* @TPS65217_NUM_REGULATOR, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @devm_kcalloc(%struct.TYPE_6__* %22, i32 %23, i32 4, i32 %24)
  %26 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %27 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %29 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %113

35:                                               ; preds = %1
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %38 = call i32 @platform_set_drvdata(%struct.platform_device* %36, %struct.tps65217* %37)
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %109, %35
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @TPS65217_NUM_REGULATOR, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %112

43:                                               ; preds = %39
  %44 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %45 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load %struct.tps65217_board*, %struct.tps65217_board** %5, align 8
  %49 = icmp ne %struct.tps65217_board* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.tps65217_board*, %struct.tps65217_board** %5, align 8
  %52 = getelementptr inbounds %struct.tps65217_board, %struct.tps65217_board* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  br label %59

59:                                               ; preds = %50, %43
  %60 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %61 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.tps65217* %60, %struct.tps65217** %61, align 8
  %62 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %63 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @regulators, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__* %67, %struct.TYPE_5__* %71, %struct.regulator_config* %7)
  store %struct.regulator_dev* %72, %struct.regulator_dev** %6, align 8
  %73 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %74 = call i64 @IS_ERR(%struct.regulator_dev* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %59
  %77 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %78 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %85 = call i32 @PTR_ERR(%struct.regulator_dev* %84)
  store i32 %85, i32* %2, align 4
  br label %113

86:                                               ; preds = %59
  %87 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @regulators, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @tps65217_reg_read(%struct.tps65217* %87, i32 %93, i32* %10)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @regulators, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %95, %101
  %103 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %104 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  br label %109

109:                                              ; preds = %86
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %39

112:                                              ; preds = %39
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %76, %32
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.tps65217* @dev_get_drvdata(i32) #1

declare dso_local %struct.tps65217_board* @dev_get_platdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @devm_kcalloc(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps65217*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__*, %struct.TYPE_5__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @tps65217_reg_read(%struct.tps65217*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
