; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_regulators_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_regulators_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.platform_device = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node*, i32 }
%struct.device_node = type { i32 }
%struct.palmas = type { i32*, %struct.palmas_pmic_driver_data*, %struct.palmas_pmic* }
%struct.palmas_pmic_driver_data = type { i32 (%struct.palmas_pmic*, %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_platform_data*, i8*, %struct.regulator_config*)*, i32 (%struct.palmas_pmic*, %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_platform_data*, i8*, %struct.regulator_config*)* }
%struct.palmas_pmic_platform_data = type { i32 }
%struct.regulator_config = type { %struct.palmas_pmic*, %struct.TYPE_8__*, i32 }
%struct.palmas_pmic = type { i32, i32, i32, %struct.palmas*, %struct.TYPE_8__* }
%struct.of_device_id = type { i64 }

@of_palmas_match_tbl = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ti,tps659038-pmic\00", align 1
@TPS659038_REGEN2_CTRL = common dso_local global i32 0, align 4
@palmas_generic_regs_info = common dso_local global %struct.TYPE_7__* null, align 8
@PALMAS_REG_REGEN2 = common dso_local global i64 0, align 8
@palmas_ddata = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@PALMAS_SMPS_CTRL = common dso_local global i32 0, align 4
@PALMAS_SMPS_CTRL_SMPS12_SMPS123_EN = common dso_local global i32 0, align 4
@PALMAS_SMPS_CTRL_SMPS45_SMPS457_EN = common dso_local global i32 0, align 4
@REGULATOR_SLAVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @palmas_regulators_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_regulators_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.palmas*, align 8
  %5 = alloca %struct.palmas_pmic_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.palmas_pmic_driver_data*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.palmas_pmic*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.of_device_id*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.palmas* @dev_get_drvdata(i32 %17)
  store %struct.palmas* %18, %struct.palmas** %4, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 1
  %21 = call %struct.palmas_pmic_platform_data* @dev_get_platdata(%struct.TYPE_8__* %20)
  store %struct.palmas_pmic_platform_data* %21, %struct.palmas_pmic_platform_data** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.device_node*, %struct.device_node** %24, align 8
  store %struct.device_node* %25, %struct.device_node** %6, align 8
  %26 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 24, i1 false)
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* @of_palmas_match_tbl, align 4
  %28 = call i32 @of_match_ptr(i32 %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = call %struct.of_device_id* @of_match_device(i32 %28, %struct.TYPE_8__* %30)
  store %struct.of_device_id* %31, %struct.of_device_id** %11, align 8
  %32 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %33 = icmp ne %struct.of_device_id* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENODATA, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %166

37:                                               ; preds = %1
  %38 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %39 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.palmas_pmic_driver_data*
  store %struct.palmas_pmic_driver_data* %41, %struct.palmas_pmic_driver_data** %7, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @devm_kzalloc(%struct.TYPE_8__* %43, i32 4, i32 %44)
  %46 = bitcast i8* %45 to %struct.palmas_pmic_platform_data*
  store %struct.palmas_pmic_platform_data* %46, %struct.palmas_pmic_platform_data** %5, align 8
  %47 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %5, align 8
  %48 = icmp ne %struct.palmas_pmic_platform_data* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %166

52:                                               ; preds = %37
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 1
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @devm_kzalloc(%struct.TYPE_8__* %54, i32 32, i32 %55)
  %57 = bitcast i8* %56 to %struct.palmas_pmic*
  store %struct.palmas_pmic* %57, %struct.palmas_pmic** %9, align 8
  %58 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %59 = icmp ne %struct.palmas_pmic* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %166

63:                                               ; preds = %52
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = call i64 @of_device_is_compatible(%struct.device_node* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @TPS659038_REGEN2_CTRL, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @palmas_generic_regs_info, align 8
  %70 = load i64, i64* @PALMAS_REG_REGEN2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @palmas_ddata, i32 0, i32 0), align 4
  br label %73

73:                                               ; preds = %67, %63
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 1
  %76 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %77 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %76, i32 0, i32 4
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %77, align 8
  %78 = load %struct.palmas*, %struct.palmas** %4, align 8
  %79 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %80 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %79, i32 0, i32 3
  store %struct.palmas* %78, %struct.palmas** %80, align 8
  %81 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %82 = load %struct.palmas*, %struct.palmas** %4, align 8
  %83 = getelementptr inbounds %struct.palmas, %struct.palmas* %82, i32 0, i32 2
  store %struct.palmas_pmic* %81, %struct.palmas_pmic** %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %86 = call i32 @platform_set_drvdata(%struct.platform_device* %84, %struct.palmas_pmic* %85)
  %87 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %7, align 8
  %88 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %89 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %88, i32 0, i32 3
  %90 = load %struct.palmas*, %struct.palmas** %89, align 8
  %91 = getelementptr inbounds %struct.palmas, %struct.palmas* %90, i32 0, i32 1
  store %struct.palmas_pmic_driver_data* %87, %struct.palmas_pmic_driver_data** %91, align 8
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 1
  %94 = load %struct.device_node*, %struct.device_node** %6, align 8
  %95 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %5, align 8
  %96 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %7, align 8
  %97 = call i32 @palmas_dt_to_pdata(%struct.TYPE_8__* %93, %struct.device_node* %94, %struct.palmas_pmic_platform_data* %95, %struct.palmas_pmic_driver_data* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %73
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %2, align 4
  br label %166

102:                                              ; preds = %73
  %103 = load %struct.palmas*, %struct.palmas** %4, align 8
  %104 = load i32, i32* @PALMAS_SMPS_CTRL, align 4
  %105 = call i32 @palmas_smps_read(%struct.palmas* %103, i32 %104, i32* %13)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %2, align 4
  br label %166

110:                                              ; preds = %102
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @PALMAS_SMPS_CTRL_SMPS12_SMPS123_EN, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %117 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %119 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %115, %110
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @PALMAS_SMPS_CTRL_SMPS45_SMPS457_EN, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %127 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %126, i32 0, i32 2
  store i32 1, i32* %127, align 8
  br label %128

128:                                              ; preds = %125, %120
  %129 = load %struct.palmas*, %struct.palmas** %4, align 8
  %130 = getelementptr inbounds %struct.palmas, %struct.palmas* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @REGULATOR_SLAVE, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store i32 %134, i32* %135, align 8
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store %struct.TYPE_8__* %137, %struct.TYPE_8__** %138, align 8
  %139 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %140 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store %struct.palmas_pmic* %139, %struct.palmas_pmic** %140, align 8
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %10, align 8
  %144 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %7, align 8
  %145 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %144, i32 0, i32 0
  %146 = load i32 (%struct.palmas_pmic*, %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_platform_data*, i8*, %struct.regulator_config*)*, i32 (%struct.palmas_pmic*, %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_platform_data*, i8*, %struct.regulator_config*)** %145, align 8
  %147 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %148 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %7, align 8
  %149 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %5, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 %146(%struct.palmas_pmic* %147, %struct.palmas_pmic_driver_data* %148, %struct.palmas_pmic_platform_data* %149, i8* %150, %struct.regulator_config* byval(%struct.regulator_config) align 8 %8)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %128
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %2, align 4
  br label %166

156:                                              ; preds = %128
  %157 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %7, align 8
  %158 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %157, i32 0, i32 1
  %159 = load i32 (%struct.palmas_pmic*, %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_platform_data*, i8*, %struct.regulator_config*)*, i32 (%struct.palmas_pmic*, %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_platform_data*, i8*, %struct.regulator_config*)** %158, align 8
  %160 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %161 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %7, align 8
  %162 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %5, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = call i32 %159(%struct.palmas_pmic* %160, %struct.palmas_pmic_driver_data* %161, %struct.palmas_pmic_platform_data* %162, i8* %163, %struct.regulator_config* byval(%struct.regulator_config) align 8 %8)
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %156, %154, %108, %100, %60, %49, %34
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.palmas* @dev_get_drvdata(i32) #1

declare dso_local %struct.palmas_pmic_platform_data* @dev_get_platdata(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.palmas_pmic*) #1

declare dso_local i32 @palmas_dt_to_pdata(%struct.TYPE_8__*, %struct.device_node*, %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_driver_data*) #1

declare dso_local i32 @palmas_smps_read(%struct.palmas*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
