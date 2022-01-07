; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pcf50633-regulator.c_pcf50633_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pcf50633-regulator.c_pcf50633_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.pcf50633 = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.pcf50633*, i64)* }
%struct.regulator_config = type { i32, %struct.pcf50633*, i32, %struct.TYPE_5__* }

@regulators = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pcf50633_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca %struct.pcf50633*, align 8
  %6 = alloca %struct.regulator_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 32, i1 false)
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.pcf50633* @dev_to_pcf50633(i32 %11)
  store %struct.pcf50633* %12, %struct.pcf50633** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %15, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = call i32 @dev_get_platdata(%struct.TYPE_5__* %17)
  %19 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %21 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.pcf50633* %20, %struct.pcf50633** %21, align 8
  %22 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %23 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 1
  %28 = load i32*, i32** @regulators, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %27, i32* %32, %struct.regulator_config* %6)
  store %struct.regulator_dev* %33, %struct.regulator_dev** %4, align 8
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %35 = call i64 @IS_ERR(%struct.regulator_dev* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %39 = call i32 @PTR_ERR(%struct.regulator_dev* %38)
  store i32 %39, i32* %2, align 4
  br label %62

40:                                               ; preds = %1
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %43 = call i32 @platform_set_drvdata(%struct.platform_device* %41, %struct.regulator_dev* %42)
  %44 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %45 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.pcf50633*, i64)*, i32 (%struct.pcf50633*, i64)** %47, align 8
  %49 = icmp ne i32 (%struct.pcf50633*, i64)* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %52 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.pcf50633*, i64)*, i32 (%struct.pcf50633*, i64)** %54, align 8
  %56 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 %55(%struct.pcf50633* %56, i64 %59)
  br label %61

61:                                               ; preds = %50, %40
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.pcf50633* @dev_to_pcf50633(i32) #2

declare dso_local i32 @dev_get_platdata(%struct.TYPE_5__*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, i32*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regulator_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
