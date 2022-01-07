; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp3971.c_setup_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp3971.c_setup_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp3971 = type { i32 }
%struct.lp3971_platform_data = type { i32, %struct.lp3971_regulator_subdev* }
%struct.lp3971_regulator_subdev = type { i64, i32 }
%struct.regulator_config = type { %struct.lp3971*, i32, i32 }
%struct.regulator_dev = type { i32 }

@regulators = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"regulator init failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp3971*, %struct.lp3971_platform_data*)* @setup_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_regulators(%struct.lp3971* %0, %struct.lp3971_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp3971*, align 8
  %5 = alloca %struct.lp3971_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.lp3971_regulator_subdev*, align 8
  %10 = alloca %struct.regulator_dev*, align 8
  store %struct.lp3971* %0, %struct.lp3971** %4, align 8
  store %struct.lp3971_platform_data* %1, %struct.lp3971_platform_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %57, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.lp3971_platform_data*, %struct.lp3971_platform_data** %5, align 8
  %14 = getelementptr inbounds %struct.lp3971_platform_data, %struct.lp3971_platform_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %11
  %18 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.lp3971_platform_data*, %struct.lp3971_platform_data** %5, align 8
  %20 = getelementptr inbounds %struct.lp3971_platform_data, %struct.lp3971_platform_data* %19, i32 0, i32 1
  %21 = load %struct.lp3971_regulator_subdev*, %struct.lp3971_regulator_subdev** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.lp3971_regulator_subdev, %struct.lp3971_regulator_subdev* %21, i64 %23
  store %struct.lp3971_regulator_subdev* %24, %struct.lp3971_regulator_subdev** %9, align 8
  %25 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %26 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.lp3971_regulator_subdev*, %struct.lp3971_regulator_subdev** %9, align 8
  %30 = getelementptr inbounds %struct.lp3971_regulator_subdev, %struct.lp3971_regulator_subdev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %34 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store %struct.lp3971* %33, %struct.lp3971** %34, align 8
  %35 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %36 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @regulators, align 8
  %39 = load %struct.lp3971_regulator_subdev*, %struct.lp3971_regulator_subdev** %9, align 8
  %40 = getelementptr inbounds %struct.lp3971_regulator_subdev, %struct.lp3971_regulator_subdev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = call %struct.regulator_dev* @devm_regulator_register(i32 %37, i32* %42, %struct.regulator_config* %8)
  store %struct.regulator_dev* %43, %struct.regulator_dev** %10, align 8
  %44 = load %struct.regulator_dev*, %struct.regulator_dev** %10, align 8
  %45 = call i64 @IS_ERR(%struct.regulator_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %17
  %48 = load %struct.regulator_dev*, %struct.regulator_dev** %10, align 8
  %49 = call i32 @PTR_ERR(%struct.regulator_dev* %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.lp3971*, %struct.lp3971** %4, align 8
  %51 = getelementptr inbounds %struct.lp3971, %struct.lp3971* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %61

56:                                               ; preds = %17
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %11

60:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %47
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32, i32*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
