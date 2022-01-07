; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_hi6421-regulator.c_hi6421_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_hi6421-regulator.c_hi6421_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hi6421_regulator_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hi6421_pmic = type { i32 }
%struct.hi6421_regulator_pdata = type { i32 }
%struct.regulator_config = type { i32, %struct.hi6421_regulator_info*, i32 }
%struct.regulator_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hi6421_regulator_info = common dso_local global %struct.hi6421_regulator_info* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi6421_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6421_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hi6421_pmic*, align 8
  %5 = alloca %struct.hi6421_regulator_pdata*, align 8
  %6 = alloca %struct.hi6421_regulator_info*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hi6421_pmic* @dev_get_drvdata(i32 %13)
  store %struct.hi6421_pmic* %14, %struct.hi6421_pmic** %4, align 8
  %15 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.hi6421_regulator_pdata* @devm_kzalloc(%struct.TYPE_5__* %17, i32 4, i32 %18)
  store %struct.hi6421_regulator_pdata* %19, %struct.hi6421_regulator_pdata** %5, align 8
  %20 = load %struct.hi6421_regulator_pdata*, %struct.hi6421_regulator_pdata** %5, align 8
  %21 = icmp ne %struct.hi6421_regulator_pdata* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %76

25:                                               ; preds = %1
  %26 = load %struct.hi6421_regulator_pdata*, %struct.hi6421_regulator_pdata** %5, align 8
  %27 = getelementptr inbounds %struct.hi6421_regulator_pdata, %struct.hi6421_regulator_pdata* %26, i32 0, i32 0
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.hi6421_regulator_pdata*, %struct.hi6421_regulator_pdata** %5, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.hi6421_regulator_pdata* %30)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %72, %25
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.hi6421_regulator_info*, %struct.hi6421_regulator_info** @hi6421_regulator_info, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.hi6421_regulator_info* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %32
  %38 = load %struct.hi6421_regulator_info*, %struct.hi6421_regulator_info** @hi6421_regulator_info, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hi6421_regulator_info, %struct.hi6421_regulator_info* %38, i64 %40
  store %struct.hi6421_regulator_info* %41, %struct.hi6421_regulator_info** %6, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load %struct.hi6421_regulator_info*, %struct.hi6421_regulator_info** %6, align 8
  %48 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.hi6421_regulator_info* %47, %struct.hi6421_regulator_info** %48, align 8
  %49 = load %struct.hi6421_pmic*, %struct.hi6421_pmic** %4, align 8
  %50 = getelementptr inbounds %struct.hi6421_pmic, %struct.hi6421_pmic* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.hi6421_regulator_info*, %struct.hi6421_regulator_info** %6, align 8
  %56 = getelementptr inbounds %struct.hi6421_regulator_info, %struct.hi6421_regulator_info* %55, i32 0, i32 0
  %57 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %54, %struct.TYPE_6__* %56, %struct.regulator_config* %7)
  store %struct.regulator_dev* %57, %struct.regulator_dev** %8, align 8
  %58 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %59 = call i64 @IS_ERR(%struct.regulator_dev* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %37
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.hi6421_regulator_info*, %struct.hi6421_regulator_info** %6, align 8
  %65 = getelementptr inbounds %struct.hi6421_regulator_info, %struct.hi6421_regulator_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(%struct.TYPE_5__* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %70 = call i32 @PTR_ERR(%struct.regulator_dev* %69)
  store i32 %70, i32* %2, align 4
  br label %76

71:                                               ; preds = %37
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %32

75:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %61, %22
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.hi6421_pmic* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.hi6421_regulator_pdata* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hi6421_regulator_pdata*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.hi6421_regulator_info*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
