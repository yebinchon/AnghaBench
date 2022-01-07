; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_bd9571mwv-regulator.c_bd9571mwv_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_bd9571mwv-regulator.c_bd9571mwv_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bd9571mwv = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.regulator_config = type { i32, %struct.bd9571mwv*, %struct.TYPE_5__* }
%struct.bd9571mwv_reg = type { i32, i8*, i8*, i8*, %struct.bd9571mwv* }
%struct.regulator_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regulators = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"rohm,ddr-backup-power\00", align 1
@BD9571MWV_BKUP_MODE_CNT_KEEPON_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid %s mode %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"rohm,rstbmode-level\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"rohm,rstbmode-pulse\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"only one rohm,rstbmode-* may be specified\00", align 1
@dev_attr_backup_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bd9571mwv_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd9571mwv_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bd9571mwv*, align 8
  %5 = alloca %struct.regulator_config, align 8
  %6 = alloca %struct.bd9571mwv_reg*, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.bd9571mwv* @dev_get_drvdata(i32 %13)
  store %struct.bd9571mwv* %14, %struct.bd9571mwv** %4, align 8
  %15 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.bd9571mwv_reg* @devm_kzalloc(%struct.TYPE_5__* %17, i32 40, i32 %18)
  store %struct.bd9571mwv_reg* %19, %struct.bd9571mwv_reg** %6, align 8
  %20 = load %struct.bd9571mwv_reg*, %struct.bd9571mwv_reg** %6, align 8
  %21 = icmp ne %struct.bd9571mwv_reg* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %136

25:                                               ; preds = %1
  %26 = load %struct.bd9571mwv*, %struct.bd9571mwv** %4, align 8
  %27 = load %struct.bd9571mwv_reg*, %struct.bd9571mwv_reg** %6, align 8
  %28 = getelementptr inbounds %struct.bd9571mwv_reg, %struct.bd9571mwv_reg* %27, i32 0, i32 4
  store %struct.bd9571mwv* %26, %struct.bd9571mwv** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.bd9571mwv_reg*, %struct.bd9571mwv_reg** %6, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.bd9571mwv_reg* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %34, align 8
  %35 = load %struct.bd9571mwv*, %struct.bd9571mwv** %4, align 8
  %36 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.bd9571mwv*, %struct.bd9571mwv** %4, align 8
  %44 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store %struct.bd9571mwv* %43, %struct.bd9571mwv** %44, align 8
  %45 = load %struct.bd9571mwv*, %struct.bd9571mwv** %4, align 8
  %46 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %76, %25
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** @regulators, align 8
  %52 = call i32 @ARRAY_SIZE(i32* %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %49
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load i32*, i32** @regulators, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %56, i32* %60, %struct.regulator_config* %5)
  store %struct.regulator_dev* %61, %struct.regulator_dev** %7, align 8
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %63 = call i64 @IS_ERR(%struct.regulator_dev* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load %struct.bd9571mwv*, %struct.bd9571mwv** %4, align 8
  %67 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %74 = call i32 @PTR_ERR(%struct.regulator_dev* %73)
  store i32 %74, i32* %2, align 4
  br label %136

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %49

79:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  %80 = load %struct.bd9571mwv*, %struct.bd9571mwv** %4, align 8
  %81 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @of_property_read_u32(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @BD9571MWV_BKUP_MODE_CNT_KEEPON_MASK, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %79
  %92 = load %struct.bd9571mwv*, %struct.bd9571mwv** %4, align 8
  %93 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %136

99:                                               ; preds = %79
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.bd9571mwv_reg*, %struct.bd9571mwv_reg** %6, align 8
  %102 = getelementptr inbounds %struct.bd9571mwv_reg, %struct.bd9571mwv_reg* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.bd9571mwv*, %struct.bd9571mwv** %4, align 8
  %104 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @of_property_read_bool(i32 %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.bd9571mwv_reg*, %struct.bd9571mwv_reg** %6, align 8
  %110 = getelementptr inbounds %struct.bd9571mwv_reg, %struct.bd9571mwv_reg* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.bd9571mwv*, %struct.bd9571mwv** %4, align 8
  %112 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @of_property_read_bool(i32 %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.bd9571mwv_reg*, %struct.bd9571mwv_reg** %6, align 8
  %118 = getelementptr inbounds %struct.bd9571mwv_reg, %struct.bd9571mwv_reg* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.bd9571mwv_reg*, %struct.bd9571mwv_reg** %6, align 8
  %120 = getelementptr inbounds %struct.bd9571mwv_reg, %struct.bd9571mwv_reg* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %135

123:                                              ; preds = %99
  %124 = load %struct.bd9571mwv_reg*, %struct.bd9571mwv_reg** %6, align 8
  %125 = getelementptr inbounds %struct.bd9571mwv_reg, %struct.bd9571mwv_reg* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load %struct.bd9571mwv*, %struct.bd9571mwv** %4, align 8
  %130 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %131, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %136

135:                                              ; preds = %123, %99
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %128, %91, %65, %22
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.bd9571mwv* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.bd9571mwv_reg* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bd9571mwv_reg*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, i32*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i8* @of_property_read_bool(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
