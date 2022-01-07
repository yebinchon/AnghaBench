; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.max77686_dev = type { i32, i32 }
%struct.max77802_regulator_prv = type { i32* }
%struct.regulator_config = type { %struct.max77802_regulator_prv*, i32, i32 }
%struct.regulator_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX77802_REG_MAX = common dso_local global i32 0, align 4
@regulators = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"cannot read current mode for %d\0A\00", align 1
@MAX77802_OPMODE_NORMAL = common dso_local global i8* null, align 8
@MAX77802_OPMODE_MASK = common dso_local global i32 0, align 4
@MAX77802_STATUS_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"regulator init failed for %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77802_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77802_pmic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max77686_dev*, align 8
  %5 = alloca %struct.max77802_regulator_prv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.regulator_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.max77686_dev* @dev_get_drvdata(i32 %16)
  store %struct.max77686_dev* %17, %struct.max77686_dev** %4, align 8
  %18 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.max77802_regulator_prv* @devm_kzalloc(%struct.TYPE_8__* %20, i32 8, i32 %21)
  store %struct.max77802_regulator_prv* %22, %struct.max77802_regulator_prv** %5, align 8
  %23 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %5, align 8
  %24 = icmp ne %struct.max77802_regulator_prv* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %126

28:                                               ; preds = %1
  %29 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %30 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %34 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %5, align 8
  %38 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store %struct.max77802_regulator_prv* %37, %struct.max77802_regulator_prv** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %5, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.max77802_regulator_prv* %40)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %122, %28
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MAX77802_REG_MAX, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %125

46:                                               ; preds = %42
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @regulators, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @max77802_get_opmode_shift(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %56 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @regulators, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @regmap_read(i32 %57, i32 %63, i32* %7)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %46
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @dev_warn(%struct.TYPE_8__* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** @MAX77802_OPMODE_NORMAL, align 8
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %7, align 4
  br label %80

74:                                               ; preds = %46
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %11, align 4
  %77 = ashr i32 %75, %76
  %78 = load i32, i32* @MAX77802_OPMODE_MASK, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %74, %67
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @MAX77802_STATUS_OFF, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i8*, i8** @MAX77802_OPMODE_NORMAL, align 8
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %5, align 8
  %88 = getelementptr inbounds %struct.max77802_regulator_prv, %struct.max77802_regulator_prv* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %101

93:                                               ; preds = %80
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %5, align 8
  %96 = getelementptr inbounds %struct.max77802_regulator_prv, %struct.max77802_regulator_prv* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %93, %84
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @regulators, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_8__* %103, %struct.TYPE_7__* %107, %struct.regulator_config* %8)
  store %struct.regulator_dev* %108, %struct.regulator_dev** %9, align 8
  %109 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %110 = call i64 @IS_ERR(%struct.regulator_dev* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %101
  %113 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %114 = call i32 @PTR_ERR(%struct.regulator_dev* %113)
  store i32 %114, i32* %12, align 4
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @dev_err(%struct.TYPE_8__* %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %2, align 4
  br label %126

121:                                              ; preds = %101
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %42

125:                                              ; preds = %42
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %112, %25
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.max77686_dev* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.max77802_regulator_prv* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max77802_regulator_prv*) #1

declare dso_local i32 @max77802_get_opmode_shift(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
