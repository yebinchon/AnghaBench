; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6323-regulator.c_mt6323_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6323-regulator.c_mt6323_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mt6397_chip = type { i32 }
%struct.regulator_config = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.regulator_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@MT6323_CID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to read Chip ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Chip ID = 0x%x\0A\00", align 1
@MT6323_MAX_REGULATOR = common dso_local global i32 0, align 4
@mt6323_regulators = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt6323_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6323_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mt6397_chip*, align 8
  %5 = alloca %struct.regulator_config, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mt6397_chip* @dev_get_drvdata(i32 %12)
  store %struct.mt6397_chip* %13, %struct.mt6397_chip** %4, align 8
  %14 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call i64 @mt6323_set_buck_vosel_reg(%struct.platform_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %85

21:                                               ; preds = %1
  %22 = load %struct.mt6397_chip*, %struct.mt6397_chip** %4, align 8
  %23 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MT6323_CID, align 4
  %26 = call i64 @regmap_read(i32 %24, i32 %25, i32* %8)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %85

34:                                               ; preds = %21
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_info(%struct.TYPE_7__* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %81, %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MT6323_MAX_REGULATOR, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %39
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt6323_regulators, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %51, align 8
  %52 = load %struct.mt6397_chip*, %struct.mt6397_chip** %4, align 8
  %53 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt6323_regulators, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__* %57, %struct.TYPE_8__* %62, %struct.regulator_config* %5)
  store %struct.regulator_dev* %63, %struct.regulator_dev** %6, align 8
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %65 = call i64 @IS_ERR(%struct.regulator_dev* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %43
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt6323_regulators, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %79 = call i32 @PTR_ERR(%struct.regulator_dev* %78)
  store i32 %79, i32* %2, align 4
  br label %85

80:                                               ; preds = %43
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %39

84:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %67, %28, %18
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.mt6397_chip* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mt6323_set_buck_vosel_reg(%struct.platform_device*) #1

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
