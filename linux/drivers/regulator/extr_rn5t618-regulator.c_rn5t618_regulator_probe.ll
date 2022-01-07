; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_rn5t618-regulator.c_rn5t618_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_rn5t618-regulator.c_rn5t618_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_desc = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rn5t618 = type { i32, i32 }
%struct.regulator_config = type { i32, i32 }
%struct.regulator_dev = type { i32 }

@rn5t567_regulators = common dso_local global %struct.regulator_desc* null, align 8
@rn5t618_regulators = common dso_local global %struct.regulator_desc* null, align 8
@rc5t619_regulators = common dso_local global %struct.regulator_desc* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rn5t618_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rn5t618_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rn5t618*, align 8
  %5 = alloca %struct.regulator_config, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca %struct.regulator_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.rn5t618* @dev_get_drvdata(i32 %13)
  store %struct.rn5t618* %14, %struct.rn5t618** %4, align 8
  %15 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  store i32 0, i32* %9, align 4
  %16 = load %struct.rn5t618*, %struct.rn5t618** %4, align 8
  %17 = getelementptr inbounds %struct.rn5t618, %struct.rn5t618* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %31 [
    i32 129, label %19
    i32 128, label %23
    i32 130, label %27
  ]

19:                                               ; preds = %1
  %20 = load %struct.regulator_desc*, %struct.regulator_desc** @rn5t567_regulators, align 8
  store %struct.regulator_desc* %20, %struct.regulator_desc** %7, align 8
  %21 = load %struct.regulator_desc*, %struct.regulator_desc** @rn5t567_regulators, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %21)
  store i32 %22, i32* %9, align 4
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.regulator_desc*, %struct.regulator_desc** @rn5t618_regulators, align 8
  store %struct.regulator_desc* %24, %struct.regulator_desc** %7, align 8
  %25 = load %struct.regulator_desc*, %struct.regulator_desc** @rn5t618_regulators, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %25)
  store i32 %26, i32* %9, align 4
  br label %34

27:                                               ; preds = %1
  %28 = load %struct.regulator_desc*, %struct.regulator_desc** @rc5t619_regulators, align 8
  store %struct.regulator_desc* %28, %struct.regulator_desc** %7, align 8
  %29 = load %struct.regulator_desc*, %struct.regulator_desc** @rc5t619_regulators, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %29)
  store i32 %30, i32* %9, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %76

34:                                               ; preds = %27, %23, %19
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.rn5t618*, %struct.rn5t618** %4, align 8
  %41 = getelementptr inbounds %struct.rn5t618, %struct.rn5t618* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %72, %34
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %51, i64 %53
  %55 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_3__* %50, %struct.regulator_desc* %54, %struct.regulator_config* %5)
  store %struct.regulator_dev* %55, %struct.regulator_dev** %6, align 8
  %56 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %57 = call i64 @IS_ERR(%struct.regulator_dev* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %48
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %62, i64 %64
  %66 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(%struct.TYPE_3__* %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %70 = call i32 @PTR_ERR(%struct.regulator_dev* %69)
  store i32 %70, i32* %2, align 4
  br label %76

71:                                               ; preds = %48
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %44

75:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %59, %31
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.rn5t618* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(%struct.regulator_desc*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_3__*, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
