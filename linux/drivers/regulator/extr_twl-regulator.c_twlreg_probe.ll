; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_twl-regulator.c_twlreg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_twl-regulator.c_twlreg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.twlreg_info = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.regulator_init_data = type { %struct.regulation_constraints }
%struct.regulation_constraints = type { i32, i32, i32 }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { i32, %struct.twlreg_info*, %struct.regulator_init_data*, %struct.TYPE_8__* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_VOLTAGE = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_MODE = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't register %s, %ld\0A\00", align 1
@TWL_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@VREG_REMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twlreg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twlreg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.twlreg_info*, align 8
  %6 = alloca %struct.twlreg_info*, align 8
  %7 = alloca %struct.regulator_init_data*, align 8
  %8 = alloca %struct.regulation_constraints*, align 8
  %9 = alloca %struct.regulator_dev*, align 8
  %10 = alloca %struct.regulator_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = bitcast %struct.regulator_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.twlreg_info* @of_device_get_match_data(%struct.TYPE_8__* %13)
  store %struct.twlreg_info* %14, %struct.twlreg_info** %6, align 8
  %15 = load %struct.twlreg_info*, %struct.twlreg_info** %6, align 8
  %16 = icmp ne %struct.twlreg_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %118

20:                                               ; preds = %1
  %21 = load %struct.twlreg_info*, %struct.twlreg_info** %6, align 8
  %22 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.twlreg_info*, %struct.twlreg_info** %6, align 8
  %32 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %31, i32 0, i32 1
  %33 = call %struct.regulator_init_data* @of_get_regulator_init_data(%struct.TYPE_8__* %26, i32 %30, %struct.TYPE_9__* %32)
  store %struct.regulator_init_data* %33, %struct.regulator_init_data** %7, align 8
  %34 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %35 = icmp ne %struct.regulator_init_data* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %20
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %118

39:                                               ; preds = %20
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.twlreg_info*, %struct.twlreg_info** %6, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.twlreg_info* @devm_kmemdup(%struct.TYPE_8__* %41, %struct.twlreg_info* %42, i32 12, i32 %43)
  store %struct.twlreg_info* %44, %struct.twlreg_info** %5, align 8
  %45 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %46 = icmp ne %struct.twlreg_info* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %118

50:                                               ; preds = %39
  %51 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %52 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %51, i32 0, i32 0
  store %struct.regulation_constraints* %52, %struct.regulation_constraints** %8, align 8
  %53 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  %54 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.regulation_constraints*, %struct.regulation_constraints** %8, align 8
  %57 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @REGULATOR_CHANGE_VOLTAGE, align 4
  %61 = load i32, i32* @REGULATOR_CHANGE_MODE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @REGULATOR_CHANGE_STATUS, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.regulation_constraints*, %struct.regulation_constraints** %8, align 8
  %66 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %4, align 4
  switch i32 %69, label %73 [
    i32 129, label %70
    i32 134, label %70
    i32 133, label %70
    i32 128, label %70
    i32 132, label %70
    i32 131, label %70
    i32 130, label %70
  ]

70:                                               ; preds = %50, %50, %50, %50, %50, %50, %50
  %71 = load %struct.regulation_constraints*, %struct.regulation_constraints** %8, align 8
  %72 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  br label %74

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73, %70
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 3
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %77, align 8
  %78 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %79 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 2
  store %struct.regulator_init_data* %78, %struct.regulator_init_data** %79, align 8
  %80 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %81 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 1
  store %struct.twlreg_info* %80, %struct.twlreg_info** %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %90 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %89, i32 0, i32 1
  %91 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_8__* %88, %struct.TYPE_9__* %90, %struct.regulator_config* %10)
  store %struct.regulator_dev* %91, %struct.regulator_dev** %9, align 8
  %92 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %93 = call i64 @IS_ERR(%struct.regulator_dev* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %74
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %99 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %103 = call i32 @PTR_ERR(%struct.regulator_dev* %102)
  %104 = call i32 @dev_err(%struct.TYPE_8__* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %103)
  %105 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %106 = call i32 @PTR_ERR(%struct.regulator_dev* %105)
  store i32 %106, i32* %2, align 4
  br label %118

107:                                              ; preds = %74
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %110 = call i32 @platform_set_drvdata(%struct.platform_device* %108, %struct.regulator_dev* %109)
  %111 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %112 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %113 = load i32, i32* @VREG_REMAP, align 4
  %114 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %115 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @twlreg_write(%struct.twlreg_info* %111, i32 %112, i32 %113, i32 %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %107, %95, %47, %36, %17
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.twlreg_info* @of_device_get_match_data(%struct.TYPE_8__*) #2

declare dso_local %struct.regulator_init_data* @of_get_regulator_init_data(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #2

declare dso_local %struct.twlreg_info* @devm_kmemdup(%struct.TYPE_8__*, %struct.twlreg_info*, i32, i32) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32, i32) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regulator_dev*) #2

declare dso_local i32 @twlreg_write(%struct.twlreg_info*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
