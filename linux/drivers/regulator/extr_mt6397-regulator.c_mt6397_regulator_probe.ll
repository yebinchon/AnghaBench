; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6397-regulator.c_mt6397_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6397-regulator.c_mt6397_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mt6397_chip = type { i32 }
%struct.regulator_config = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.regulator_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@MT6397_CID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to read Chip ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Chip ID = 0x%x\0A\00", align 1
@ldo_volt_table5_v2 = common dso_local global i32 0, align 4
@mt6397_regulators = common dso_local global %struct.TYPE_6__* null, align 8
@MT6397_ID_VGP2 = common dso_local global i64 0, align 8
@MT6397_MAX_REGULATOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt6397_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6397_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mt6397_chip*, align 8
  %5 = alloca %struct.regulator_config, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mt6397_chip* @dev_get_drvdata(i32 %13)
  store %struct.mt6397_chip* %14, %struct.mt6397_chip** %4, align 8
  %15 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call i64 @mt6397_set_buck_vosel_reg(%struct.platform_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %98

22:                                               ; preds = %1
  %23 = load %struct.mt6397_chip*, %struct.mt6397_chip** %4, align 8
  %24 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MT6397_CID, align 4
  %27 = call i64 @regmap_read(i32 %25, i32 %26, i32* %8)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %98

35:                                               ; preds = %22
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dev_info(%struct.TYPE_7__* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 255
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %50 [
    i32 128, label %43
  ]

43:                                               ; preds = %35
  %44 = load i32, i32* @ldo_volt_table5_v2, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt6397_regulators, align 8
  %46 = load i64, i64* @MT6397_ID_VGP2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 4
  br label %51

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %43
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %94, %51
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MT6397_MAX_REGULATOR, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %52
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt6397_regulators, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %64, align 8
  %65 = load %struct.mt6397_chip*, %struct.mt6397_chip** %4, align 8
  %66 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt6397_regulators, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__* %70, %struct.TYPE_8__* %75, %struct.regulator_config* %5)
  store %struct.regulator_dev* %76, %struct.regulator_dev** %6, align 8
  %77 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %78 = call i64 @IS_ERR(%struct.regulator_dev* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %56
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt6397_regulators, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %92 = call i32 @PTR_ERR(%struct.regulator_dev* %91)
  store i32 %92, i32* %2, align 4
  br label %98

93:                                               ; preds = %56
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %52

97:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %80, %29, %19
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.mt6397_chip* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mt6397_set_buck_vosel_reg(%struct.platform_device*) #1

declare dso_local i64 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
