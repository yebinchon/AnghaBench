; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_twl6030-regulator.c_twlreg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_twl6030-regulator.c_twlreg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.twlreg_info = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.regulator_init_data = type { %struct.regulation_constraints }
%struct.regulation_constraints = type { i32, i32 }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { %struct.device_node*, %struct.twlreg_info*, %struct.regulator_init_data*, %struct.TYPE_8__* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_VOLTAGE = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_MODE = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_STATUS = common dso_local global i32 0, align 4
@SMPS_MULTOFFSET_SMPS3 = common dso_local global i32 0, align 4
@SMPS_EXTENDED_EN = common dso_local global i32 0, align 4
@SMPS_OFFSET_EN = common dso_local global i32 0, align 4
@SMPS_MULTOFFSET_SMPS4 = common dso_local global i32 0, align 4
@SMPS_MULTOFFSET_VIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ti,retain-on-reset\00", align 1
@TWL_6030_WARM_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"can't register %s, %ld\0A\00", align 1
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
  %11 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = bitcast %struct.regulator_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %11, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.twlreg_info* @of_device_get_match_data(%struct.TYPE_8__* %18)
  store %struct.twlreg_info* %19, %struct.twlreg_info** %6, align 8
  %20 = load %struct.twlreg_info*, %struct.twlreg_info** %6, align 8
  %21 = icmp ne %struct.twlreg_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %185

25:                                               ; preds = %1
  %26 = load %struct.twlreg_info*, %struct.twlreg_info** %6, align 8
  %27 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.device_node*, %struct.device_node** %11, align 8
  %33 = load %struct.twlreg_info*, %struct.twlreg_info** %6, align 8
  %34 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %33, i32 0, i32 0
  %35 = call %struct.regulator_init_data* @of_get_regulator_init_data(%struct.TYPE_8__* %31, %struct.device_node* %32, %struct.TYPE_9__* %34)
  store %struct.regulator_init_data* %35, %struct.regulator_init_data** %7, align 8
  %36 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %37 = icmp ne %struct.regulator_init_data* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %185

41:                                               ; preds = %25
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.twlreg_info*, %struct.twlreg_info** %6, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.twlreg_info* @devm_kmemdup(%struct.TYPE_8__* %43, %struct.twlreg_info* %44, i32 12, i32 %45)
  store %struct.twlreg_info* %46, %struct.twlreg_info** %5, align 8
  %47 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %48 = icmp ne %struct.twlreg_info* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %185

52:                                               ; preds = %41
  %53 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %54 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %53, i32 0, i32 0
  store %struct.regulation_constraints* %54, %struct.regulation_constraints** %8, align 8
  %55 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  %56 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.regulation_constraints*, %struct.regulation_constraints** %8, align 8
  %59 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @REGULATOR_CHANGE_VOLTAGE, align 4
  %63 = load i32, i32* @REGULATOR_CHANGE_MODE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @REGULATOR_CHANGE_STATUS, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.regulation_constraints*, %struct.regulation_constraints** %8, align 8
  %68 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %4, align 4
  switch i32 %71, label %141 [
    i32 130, label %72
    i32 129, label %95
    i32 128, label %118
  ]

72:                                               ; preds = %52
  %73 = call i32 (...) @twl_get_smps_mult()
  %74 = load i32, i32* @SMPS_MULTOFFSET_SMPS3, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @SMPS_EXTENDED_EN, align 4
  %79 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %80 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %72
  %84 = call i32 (...) @twl_get_smps_offset()
  %85 = load i32, i32* @SMPS_MULTOFFSET_SMPS3, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* @SMPS_OFFSET_EN, align 4
  %90 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %91 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %83
  br label %141

95:                                               ; preds = %52
  %96 = call i32 (...) @twl_get_smps_mult()
  %97 = load i32, i32* @SMPS_MULTOFFSET_SMPS4, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* @SMPS_EXTENDED_EN, align 4
  %102 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %103 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %95
  %107 = call i32 (...) @twl_get_smps_offset()
  %108 = load i32, i32* @SMPS_MULTOFFSET_SMPS4, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* @SMPS_OFFSET_EN, align 4
  %113 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %114 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %106
  br label %141

118:                                              ; preds = %52
  %119 = call i32 (...) @twl_get_smps_mult()
  %120 = load i32, i32* @SMPS_MULTOFFSET_VIO, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32, i32* @SMPS_EXTENDED_EN, align 4
  %125 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %126 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %118
  %130 = call i32 (...) @twl_get_smps_offset()
  %131 = load i32, i32* @SMPS_MULTOFFSET_VIO, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @SMPS_OFFSET_EN, align 4
  %136 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %137 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %129
  br label %141

141:                                              ; preds = %52, %140, %117, %94
  %142 = load %struct.device_node*, %struct.device_node** %11, align 8
  %143 = call i64 @of_get_property(%struct.device_node* %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* null)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i32, i32* @TWL_6030_WARM_RESET, align 4
  %147 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %148 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %141
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 3
  store %struct.TYPE_8__* %153, %struct.TYPE_8__** %154, align 8
  %155 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %156 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 2
  store %struct.regulator_init_data* %155, %struct.regulator_init_data** %156, align 8
  %157 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %158 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 1
  store %struct.twlreg_info* %157, %struct.twlreg_info** %158, align 8
  %159 = load %struct.device_node*, %struct.device_node** %11, align 8
  %160 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 0
  store %struct.device_node* %159, %struct.device_node** %160, align 8
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %164 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %163, i32 0, i32 0
  %165 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_8__* %162, %struct.TYPE_9__* %164, %struct.regulator_config* %10)
  store %struct.regulator_dev* %165, %struct.regulator_dev** %9, align 8
  %166 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %167 = call i64 @IS_ERR(%struct.regulator_dev* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %151
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load %struct.twlreg_info*, %struct.twlreg_info** %5, align 8
  %173 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %177 = call i32 @PTR_ERR(%struct.regulator_dev* %176)
  %178 = call i32 @dev_err(%struct.TYPE_8__* %171, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %175, i32 %177)
  %179 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %180 = call i32 @PTR_ERR(%struct.regulator_dev* %179)
  store i32 %180, i32* %2, align 4
  br label %185

181:                                              ; preds = %151
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %184 = call i32 @platform_set_drvdata(%struct.platform_device* %182, %struct.regulator_dev* %183)
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %181, %169, %49, %38, %22
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.twlreg_info* @of_device_get_match_data(%struct.TYPE_8__*) #2

declare dso_local %struct.regulator_init_data* @of_get_regulator_init_data(%struct.TYPE_8__*, %struct.device_node*, %struct.TYPE_9__*) #2

declare dso_local %struct.twlreg_info* @devm_kmemdup(%struct.TYPE_8__*, %struct.twlreg_info*, i32, i32) #2

declare dso_local i32 @twl_get_smps_mult(...) #2

declare dso_local i32 @twl_get_smps_offset(...) #2

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32, i32) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regulator_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
