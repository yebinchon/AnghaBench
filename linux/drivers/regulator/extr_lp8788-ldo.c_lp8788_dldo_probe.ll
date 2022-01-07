; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-ldo.c_lp8788_dldo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-ldo.c_lp8788_dldo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.lp8788 = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32** }
%struct.lp8788_ldo = type { %struct.regulator_dev*, i64, %struct.lp8788* }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { i32, %struct.lp8788_ldo*, i32*, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lp8788_dldo_desc = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"DLDO%d regulator register err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp8788_dldo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_dldo_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp8788*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp8788_ldo*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.lp8788* @dev_get_drvdata(i32 %13)
  store %struct.lp8788* %14, %struct.lp8788** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 40, i1 false)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.lp8788_ldo* @devm_kzalloc(%struct.TYPE_6__* %20, i32 24, i32 %21)
  store %struct.lp8788_ldo* %22, %struct.lp8788_ldo** %6, align 8
  %23 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %24 = icmp ne %struct.lp8788_ldo* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %107

28:                                               ; preds = %1
  %29 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %30 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %31 = getelementptr inbounds %struct.lp8788_ldo, %struct.lp8788_ldo* %30, i32 0, i32 2
  store %struct.lp8788* %29, %struct.lp8788** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @lp8788_config_ldo_enable_mode(%struct.platform_device* %32, %struct.lp8788_ldo* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %2, align 4
  br label %107

40:                                               ; preds = %28
  %41 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %42 = getelementptr inbounds %struct.lp8788_ldo, %struct.lp8788_ldo* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %47 = getelementptr inbounds %struct.lp8788_ldo, %struct.lp8788_ldo* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 4
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %57 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = icmp ne %struct.TYPE_5__* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %50
  %61 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %62 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  br label %71

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70, %60
  %72 = phi i32* [ %69, %60 ], [ null, %70 ]
  %73 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store i32* %72, i32** %73, align 8
  %74 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %75 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.lp8788_ldo* %74, %struct.lp8788_ldo** %75, align 8
  %76 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %77 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 1
  %82 = load i32*, i32** @lp8788_dldo_desc, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__* %81, i32* %85, %struct.regulator_config* %7)
  store %struct.regulator_dev* %86, %struct.regulator_dev** %8, align 8
  %87 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %88 = call i64 @IS_ERR(%struct.regulator_dev* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %71
  %91 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %92 = call i32 @PTR_ERR(%struct.regulator_dev* %91)
  store i32 %92, i32* %9, align 4
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 1
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @dev_err(%struct.TYPE_6__* %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %2, align 4
  br label %107

100:                                              ; preds = %71
  %101 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %102 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %103 = getelementptr inbounds %struct.lp8788_ldo, %struct.lp8788_ldo* %102, i32 0, i32 0
  store %struct.regulator_dev* %101, %struct.regulator_dev** %103, align 8
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %106 = call i32 @platform_set_drvdata(%struct.platform_device* %104, %struct.lp8788_ldo* %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %100, %90, %38, %25
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.lp8788* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.lp8788_ldo* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @lp8788_config_ldo_enable_mode(%struct.platform_device*, %struct.lp8788_ldo*, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__*, i32*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lp8788_ldo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
