; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_88pm8607.c_pm8607_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_88pm8607.c_pm8607_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8607_regulator_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pm860x_chip = type { i64, i32, i32, i32, i64 }
%struct.regulator_init_data = type { i32 }
%struct.regulator_config = type { i32, %struct.regulator_init_data*, %struct.pm8607_regulator_info*, i32 }
%struct.regulator_dev = type { i32 }
%struct.resource = type { i64 }

@IORESOURCE_REG = common dso_local global i32 0, align 4
@pm8607_regulator_info = common dso_local global %struct.pm8607_regulator_info* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to find regulator %llu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pm8606_regulator_info = common dso_local global %struct.pm8607_regulator_info* null, align 8
@PM8607_ID_BUCK3 = common dso_local global i32 0, align 4
@CHIP_PM8607 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm8607_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8607_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm860x_chip*, align 8
  %5 = alloca %struct.pm8607_regulator_info*, align 8
  %6 = alloca %struct.regulator_init_data*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pm860x_chip* @dev_get_drvdata(i32 %14)
  store %struct.pm860x_chip* %15, %struct.pm860x_chip** %4, align 8
  store %struct.pm8607_regulator_info* null, %struct.pm8607_regulator_info** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.regulator_init_data* @dev_get_platdata(%struct.TYPE_5__* %17)
  store %struct.regulator_init_data* %18, %struct.regulator_init_data** %6, align 8
  %19 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_REG, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %9, align 8
  %23 = load %struct.resource*, %struct.resource** %9, align 8
  %24 = icmp ne %struct.resource* %23, null
  br i1 %24, label %25, label %64

25:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.pm8607_regulator_info*, %struct.pm8607_regulator_info** @pm8607_regulator_info, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.pm8607_regulator_info* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load %struct.pm8607_regulator_info*, %struct.pm8607_regulator_info** @pm8607_regulator_info, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pm8607_regulator_info, %struct.pm8607_regulator_info* %32, i64 %34
  store %struct.pm8607_regulator_info* %35, %struct.pm8607_regulator_info** %5, align 8
  %36 = load %struct.pm8607_regulator_info*, %struct.pm8607_regulator_info** %5, align 8
  %37 = getelementptr inbounds %struct.pm8607_regulator_info, %struct.pm8607_regulator_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.resource*, %struct.resource** %9, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %49

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %26

49:                                               ; preds = %44, %26
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.pm8607_regulator_info*, %struct.pm8607_regulator_info** @pm8607_regulator_info, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.pm8607_regulator_info* %51)
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.resource*, %struct.resource** %9, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dev_err(%struct.TYPE_5__* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %130

63:                                               ; preds = %49
  br label %67

64:                                               ; preds = %1
  %65 = load %struct.pm8607_regulator_info*, %struct.pm8607_regulator_info** @pm8606_regulator_info, align 8
  %66 = getelementptr inbounds %struct.pm8607_regulator_info, %struct.pm8607_regulator_info* %65, i64 0
  store %struct.pm8607_regulator_info* %66, %struct.pm8607_regulator_info** %5, align 8
  store i32 -1, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @PM8607_ID_BUCK3, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %73 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.pm8607_regulator_info*, %struct.pm8607_regulator_info** %5, align 8
  %78 = getelementptr inbounds %struct.pm8607_regulator_info, %struct.pm8607_regulator_info* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %71, %67
  %80 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %81 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 3
  store i32 %82, i32* %83, align 8
  %84 = load %struct.pm8607_regulator_info*, %struct.pm8607_regulator_info** %5, align 8
  %85 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store %struct.pm8607_regulator_info* %84, %struct.pm8607_regulator_info** %85, align 8
  %86 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %87 = icmp ne %struct.regulator_init_data* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %90 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.regulator_init_data* %89, %struct.regulator_init_data** %90, align 8
  br label %91

91:                                               ; preds = %88, %79
  %92 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %93 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CHIP_PM8607, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %99 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  br label %107

102:                                              ; preds = %91
  %103 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %104 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store i32 %105, i32* %106, align 8
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.pm8607_regulator_info*, %struct.pm8607_regulator_info** %5, align 8
  %111 = getelementptr inbounds %struct.pm8607_regulator_info, %struct.pm8607_regulator_info* %110, i32 0, i32 1
  %112 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %109, %struct.TYPE_6__* %111, %struct.regulator_config* %7)
  store %struct.regulator_dev* %112, %struct.regulator_dev** %8, align 8
  %113 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %114 = call i64 @IS_ERR(%struct.regulator_dev* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %107
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.pm8607_regulator_info*, %struct.pm8607_regulator_info** %5, align 8
  %120 = getelementptr inbounds %struct.pm8607_regulator_info, %struct.pm8607_regulator_info* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @dev_err(%struct.TYPE_5__* %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %122)
  %124 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %125 = call i32 @PTR_ERR(%struct.regulator_dev* %124)
  store i32 %125, i32* %2, align 4
  br label %130

126:                                              ; preds = %107
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load %struct.pm8607_regulator_info*, %struct.pm8607_regulator_info** %5, align 8
  %129 = call i32 @platform_set_drvdata(%struct.platform_device* %127, %struct.pm8607_regulator_info* %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %116, %54
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.pm860x_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.regulator_init_data* @dev_get_platdata(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.pm8607_regulator_info*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pm8607_regulator_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
