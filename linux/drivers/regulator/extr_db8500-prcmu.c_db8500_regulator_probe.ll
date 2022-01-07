; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_db8500-prcmu.c_db8500_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_db8500-prcmu.c_db8500_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbx500_regulator_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.regulator_init_data = type { i32 }
%struct.regulator_config = type { %struct.regulator_init_data*, i32*, %struct.dbx500_regulator_info* }
%struct.regulator_dev = type { i32 }

@dbx500_regulator_info = common dso_local global %struct.dbx500_regulator_info* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"failed to register %s: err %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"regulator-%s-probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @db8500_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db8500_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regulator_init_data*, align 8
  %5 = alloca %struct.dbx500_regulator_info*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.regulator_init_data* @dev_get_platdata(i32* %12)
  store %struct.regulator_init_data* %13, %struct.regulator_init_data** %4, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %66, %1
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** @dbx500_regulator_info, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.dbx500_regulator_info* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %14
  %20 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** @dbx500_regulator_info, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %20, i64 %22
  store %struct.dbx500_regulator_info* %23, %struct.dbx500_regulator_info** %5, align 8
  %24 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %5, align 8
  %25 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.dbx500_regulator_info* %24, %struct.dbx500_regulator_info** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store i32* %27, i32** %28, align 8
  %29 = load %struct.regulator_init_data*, %struct.regulator_init_data** %4, align 8
  %30 = icmp ne %struct.regulator_init_data* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load %struct.regulator_init_data*, %struct.regulator_init_data** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %32, i64 %34
  %36 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store %struct.regulator_init_data* %35, %struct.regulator_init_data** %36, align 8
  br label %37

37:                                               ; preds = %31, %19
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %5, align 8
  %41 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %40, i32 0, i32 0
  %42 = call %struct.regulator_dev* @devm_regulator_register(i32* %39, %struct.TYPE_2__* %41, %struct.regulator_config* %6)
  store %struct.regulator_dev* %42, %struct.regulator_dev** %7, align 8
  %43 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %44 = call i64 @IS_ERR(%struct.regulator_dev* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %37
  %47 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %48 = call i32 @PTR_ERR(%struct.regulator_dev* %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %5, align 8
  %52 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %75

58:                                               ; preds = %37
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %5, align 8
  %62 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %14

69:                                               ; preds = %14
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** @dbx500_regulator_info, align 8
  %72 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** @dbx500_regulator_info, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.dbx500_regulator_info* %72)
  %74 = call i32 @ux500_regulator_debug_init(%struct.platform_device* %70, %struct.dbx500_regulator_info* %71, i32 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %46
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.regulator_init_data* @dev_get_platdata(i32*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.dbx500_regulator_info*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32*, %struct.TYPE_2__*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #2

declare dso_local i32 @ux500_regulator_debug_init(%struct.platform_device*, %struct.dbx500_regulator_info*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
