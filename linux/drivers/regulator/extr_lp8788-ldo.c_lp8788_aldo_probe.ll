; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-ldo.c_lp8788_aldo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-ldo.c_lp8788_aldo_probe.c"
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
@ALDO1 = common dso_local global i64 0, align 8
@lp8788_aldo_desc = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"ALDO%d regulator register err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp8788_aldo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_aldo_probe(%struct.platform_device* %0) #0 {
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
  br label %110

28:                                               ; preds = %1
  %29 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %30 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %31 = getelementptr inbounds %struct.lp8788_ldo, %struct.lp8788_ldo* %30, i32 0, i32 2
  store %struct.lp8788* %29, %struct.lp8788** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @ALDO1, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @lp8788_config_ldo_enable_mode(%struct.platform_device* %32, %struct.lp8788_ldo* %33, i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %2, align 4
  br label %110

43:                                               ; preds = %28
  %44 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %45 = getelementptr inbounds %struct.lp8788_ldo, %struct.lp8788_ldo* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %50 = getelementptr inbounds %struct.lp8788_ldo, %struct.lp8788_ldo* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 4
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 3
  store i32 %57, i32* %58, align 8
  %59 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %60 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %53
  %64 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %65 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  br label %74

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73, %63
  %75 = phi i32* [ %72, %63 ], [ null, %73 ]
  %76 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store i32* %75, i32** %76, align 8
  %77 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %78 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.lp8788_ldo* %77, %struct.lp8788_ldo** %78, align 8
  %79 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %80 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 1
  %85 = load i32*, i32** @lp8788_aldo_desc, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__* %84, i32* %88, %struct.regulator_config* %7)
  store %struct.regulator_dev* %89, %struct.regulator_dev** %8, align 8
  %90 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %91 = call i64 @IS_ERR(%struct.regulator_dev* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %74
  %94 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %95 = call i32 @PTR_ERR(%struct.regulator_dev* %94)
  store i32 %95, i32* %9, align 4
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 1
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @dev_err(%struct.TYPE_6__* %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %2, align 4
  br label %110

103:                                              ; preds = %74
  %104 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %105 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %106 = getelementptr inbounds %struct.lp8788_ldo, %struct.lp8788_ldo* %105, i32 0, i32 0
  store %struct.regulator_dev* %104, %struct.regulator_dev** %106, align 8
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load %struct.lp8788_ldo*, %struct.lp8788_ldo** %6, align 8
  %109 = call i32 @platform_set_drvdata(%struct.platform_device* %107, %struct.lp8788_ldo* %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %103, %93, %41, %25
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.lp8788* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.lp8788_ldo* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @lp8788_config_ldo_enable_mode(%struct.platform_device*, %struct.lp8788_ldo*, i64) #1

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
