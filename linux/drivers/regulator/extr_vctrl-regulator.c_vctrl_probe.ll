; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_vctrl-regulator.c_vctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_vctrl-regulator.c_vctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.vctrl_data = type { i32, i32, %struct.TYPE_8__*, i32, %struct.regulator_desc, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.regulator_desc = type { i8*, i32, i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { %struct.vctrl_voltage_range }
%struct.vctrl_voltage_range = type { i32, i32 }
%struct.regulator_init_data = type { i32 }
%struct.regulator_config = type { %struct.regulator_init_data*, %struct.vctrl_data*, %struct.TYPE_9__*, %struct.device_node* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"vctrl\00", align 1
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vctrl_ops_cont = common dso_local global i32 0, align 4
@vctrl_ops_non_cont = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get control voltage\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to register regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.vctrl_data*, align 8
  %6 = alloca %struct.regulator_init_data*, align 8
  %7 = alloca %struct.regulator_desc*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.vctrl_voltage_range*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  %17 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.vctrl_data* @devm_kzalloc(%struct.TYPE_9__* %19, i32 64, i32 %20)
  store %struct.vctrl_data* %21, %struct.vctrl_data** %5, align 8
  %22 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %23 = icmp ne %struct.vctrl_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %191

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.vctrl_data* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %33 = call i32 @vctrl_parse_dt(%struct.platform_device* %31, %struct.vctrl_data* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %2, align 4
  br label %191

38:                                               ; preds = %27
  %39 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %40 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store %struct.vctrl_voltage_range* %41, %struct.vctrl_voltage_range** %9, align 8
  %42 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %43 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %42, i32 0, i32 4
  store %struct.regulator_desc* %43, %struct.regulator_desc** %7, align 8
  %44 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %45 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %45, align 8
  %46 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %47 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %48 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @THIS_MODULE, align 4
  %50 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %51 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %53 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @regulator_get_linear_step(i32 %54)
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %65, label %57

57:                                               ; preds = %38
  %58 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %59 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @regulator_count_voltages(i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57, %38
  %66 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %67 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %69 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %68, i32 0, i32 3
  store i32* @vctrl_ops_cont, i32** %69, align 8
  br label %73

70:                                               ; preds = %57
  %71 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %72 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %71, i32 0, i32 3
  store i32* @vctrl_ops_non_cont, i32** %72, align 8
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.device_node*, %struct.device_node** %4, align 8
  %77 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %78 = call %struct.regulator_init_data* @of_get_regulator_init_data(%struct.TYPE_9__* %75, %struct.device_node* %76, %struct.regulator_desc* %77)
  store %struct.regulator_init_data* %78, %struct.regulator_init_data** %6, align 8
  %79 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %80 = icmp ne %struct.regulator_init_data* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %191

84:                                               ; preds = %73
  %85 = load %struct.device_node*, %struct.device_node** %4, align 8
  %86 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store %struct.device_node* %85, %struct.device_node** %86, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %89, align 8
  %90 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %91 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store %struct.vctrl_data* %90, %struct.vctrl_data** %91, align 8
  %92 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %93 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store %struct.regulator_init_data* %92, %struct.regulator_init_data** %93, align 8
  %94 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %95 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %168, label %98

98:                                               ; preds = %84
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = call i32 @vctrl_init_vtable(%struct.platform_device* %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %2, align 4
  br label %191

105:                                              ; preds = %98
  %106 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %107 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @regulator_get_voltage(i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %2, align 4
  br label %191

117:                                              ; preds = %105
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %9, align 8
  %120 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %125 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  br label %167

126:                                              ; preds = %117
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %9, align 8
  %129 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %127, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %134 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  %137 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %138 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %166

139:                                              ; preds = %126
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %162, %139
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %143 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %140
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %149 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %148, i32 0, i32 2
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %147, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %146
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %160 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  br label %165

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %140

165:                                              ; preds = %157, %140
  br label %166

166:                                              ; preds = %165, %132
  br label %167

167:                                              ; preds = %166, %123
  br label %168

168:                                              ; preds = %167, %84
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %172 = call i32 @devm_regulator_register(%struct.TYPE_9__* %170, %struct.regulator_desc* %171, %struct.regulator_config* %8)
  %173 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %174 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %176 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @IS_ERR(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %168
  %181 = load %struct.vctrl_data*, %struct.vctrl_data** %5, align 8
  %182 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @PTR_ERR(i32 %183)
  store i32 %184, i32* %11, align 4
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = load i32, i32* %11, align 4
  %188 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %186, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %11, align 4
  store i32 %189, i32* %2, align 4
  br label %191

190:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %190, %180, %112, %103, %81, %36, %24
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.vctrl_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vctrl_data*) #2

declare dso_local i32 @vctrl_parse_dt(%struct.platform_device*, %struct.vctrl_data*) #2

declare dso_local i32 @regulator_get_linear_step(i32) #2

declare dso_local i32 @regulator_count_voltages(i32) #2

declare dso_local %struct.regulator_init_data* @of_get_regulator_init_data(%struct.TYPE_9__*, %struct.device_node*, %struct.regulator_desc*) #2

declare dso_local i32 @vctrl_init_vtable(%struct.platform_device*) #2

declare dso_local i32 @regulator_get_voltage(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #2

declare dso_local i32 @devm_regulator_register(%struct.TYPE_9__*, %struct.regulator_desc*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
