; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65912-regulator.c_tps65912_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65912-regulator.c_tps65912_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.tps65912 = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.regulator_config = type { i32, %struct.TYPE_3__*, %struct.tps65912* }
%struct.regulator_dev = type { i32 }

@regulators = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65912_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65912_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps65912*, align 8
  %5 = alloca %struct.regulator_config, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.tps65912* @dev_get_drvdata(i32 %11)
  store %struct.tps65912* %12, %struct.tps65912** %4, align 8
  %13 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %16 = call i32 @platform_set_drvdata(%struct.platform_device* %14, %struct.tps65912* %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %19, align 8
  %20 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %21 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  store %struct.tps65912* %20, %struct.tps65912** %21, align 8
  %22 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %23 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %31 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %61, %1
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** @regulators, align 8
  %37 = call i32 @ARRAY_SIZE(i32* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 1
  %42 = load i32*, i32** @regulators, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_3__* %41, i32* %45, %struct.regulator_config* %5)
  store %struct.regulator_dev* %46, %struct.regulator_dev** %6, align 8
  %47 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %48 = call i64 @IS_ERR(%struct.regulator_dev* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %39
  %51 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %52 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(%struct.TYPE_4__* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %59 = call i32 @PTR_ERR(%struct.regulator_dev* %58)
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %34

64:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %50
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.tps65912* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps65912*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_3__*, i32*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
