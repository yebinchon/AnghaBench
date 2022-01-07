; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_88pm800-regulator.c_pm800_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_88pm800-regulator.c_pm800_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.pm80x_chip = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pm80x_platform_data = type { i32, %struct.regulator_init_data** }
%struct.regulator_init_data = type { i32 }
%struct.regulator_config = type { %struct.TYPE_7__*, %struct.regulator_init_data*, i32, i32 }
%struct.regulator_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PM800_ID_RG_MAX = common dso_local global i32 0, align 4
@pm800_regulator_info = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Failed to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm800_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm800_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm80x_chip*, align 8
  %5 = alloca %struct.pm80x_platform_data*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_init_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pm80x_chip* @dev_get_drvdata(i32 %15)
  store %struct.pm80x_chip* %16, %struct.pm80x_chip** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pm80x_platform_data* @dev_get_platdata(i32 %20)
  store %struct.pm80x_platform_data* %21, %struct.pm80x_platform_data** %5, align 8
  %22 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %24 = icmp ne %struct.pm80x_platform_data* %23, null
  br i1 %24, label %25, label %64

25:                                               ; preds = %1
  %26 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %27 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %34 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %33, i32 0, i32 1
  %35 = load %struct.regulator_init_data**, %struct.regulator_init_data*** %34, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.regulator_init_data** %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %40 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %39, i32 0, i32 1
  %41 = load %struct.regulator_init_data**, %struct.regulator_init_data*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.regulator_init_data*, %struct.regulator_init_data** %41, i64 %43
  %45 = load %struct.regulator_init_data*, %struct.regulator_init_data** %44, align 8
  %46 = icmp ne %struct.regulator_init_data* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %57 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %137

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %25, %1
  %65 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %66 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store i32 %67, i32* %68, align 4
  %69 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %70 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %133, %64
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @PM800_ID_RG_MAX, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %136

79:                                               ; preds = %75
  %80 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %81 = icmp ne %struct.pm80x_platform_data* %80, null
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %84 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %89 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %88, i32 0, i32 1
  %90 = load %struct.regulator_init_data**, %struct.regulator_init_data*** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.regulator_init_data*, %struct.regulator_init_data** %90, i64 %92
  %94 = load %struct.regulator_init_data*, %struct.regulator_init_data** %93, align 8
  store %struct.regulator_init_data* %94, %struct.regulator_init_data** %7, align 8
  %95 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %96 = icmp ne %struct.regulator_init_data* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %87
  br label %133

98:                                               ; preds = %87
  %99 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %100 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.regulator_init_data* %99, %struct.regulator_init_data** %100, align 8
  br label %101

101:                                              ; preds = %98, %82, %79
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm800_regulator_info, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %106, align 8
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm800_regulator_info, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_8__* %108, %struct.TYPE_9__* %113, %struct.regulator_config* %6)
  store %struct.regulator_dev* %114, %struct.regulator_dev** %11, align 8
  %115 = load %struct.regulator_dev*, %struct.regulator_dev** %11, align 8
  %116 = call i64 @IS_ERR(%struct.regulator_dev* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %101
  %119 = load %struct.regulator_dev*, %struct.regulator_dev** %11, align 8
  %120 = call i32 @PTR_ERR(%struct.regulator_dev* %119)
  store i32 %120, i32* %9, align 4
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm800_regulator_info, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @dev_err(%struct.TYPE_8__* %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %2, align 4
  br label %137

132:                                              ; preds = %101
  br label %133

133:                                              ; preds = %132, %97
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %75

136:                                              ; preds = %75
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %118, %60
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.pm80x_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.pm80x_platform_data* @dev_get_platdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(%struct.regulator_init_data**) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
