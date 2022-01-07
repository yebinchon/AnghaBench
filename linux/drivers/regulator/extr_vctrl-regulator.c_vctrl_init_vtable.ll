; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_vctrl-regulator.c_vctrl_init_vtable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_vctrl-regulator.c_vctrl_init_vtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.vctrl_data = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.regulator*, %struct.regulator_desc }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.vctrl_voltage_range }
%struct.vctrl_voltage_range = type { i32, i32 }
%struct.regulator = type { i32 }
%struct.regulator_desc = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"invalid configuration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vctrl_cmp_ctrl_uV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"switching down from %duV may cause OVP shutdown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vctrl_init_vtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vctrl_init_vtable(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vctrl_data*, align 8
  %5 = alloca %struct.regulator_desc*, align 8
  %6 = alloca %struct.regulator*, align 8
  %7 = alloca %struct.vctrl_voltage_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call %struct.vctrl_data* @platform_get_drvdata(%struct.platform_device* %14)
  store %struct.vctrl_data* %15, %struct.vctrl_data** %4, align 8
  %16 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %17 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %16, i32 0, i32 4
  store %struct.regulator_desc* %17, %struct.regulator_desc** %5, align 8
  %18 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %19 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %18, i32 0, i32 3
  %20 = load %struct.regulator*, %struct.regulator** %19, align 8
  store %struct.regulator* %20, %struct.regulator** %6, align 8
  %21 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %22 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.vctrl_voltage_range* %23, %struct.vctrl_voltage_range** %7, align 8
  %24 = load %struct.regulator*, %struct.regulator** %6, align 8
  %25 = call i32 @regulator_count_voltages(%struct.regulator* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %28 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %54, %1
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load %struct.regulator*, %struct.regulator** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @regulator_list_voltage(%struct.regulator* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %7, align 8
  %39 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %7, align 8
  %45 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %33
  %49 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %50 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %59 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %219

68:                                               ; preds = %57
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %72 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.TYPE_5__* @devm_kcalloc(i32* %70, i32 %73, i32 4, i32 %74)
  %76 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %77 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %76, i32 0, i32 1
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %77, align 8
  %78 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %79 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = icmp ne %struct.TYPE_5__* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %68
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %219

85:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %127, %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %130

90:                                               ; preds = %86
  %91 = load %struct.regulator*, %struct.regulator** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @regulator_list_voltage(%struct.regulator* %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %7, align 8
  %96 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.vctrl_voltage_range*, %struct.vctrl_voltage_range** %7, align 8
  %102 = getelementptr inbounds %struct.vctrl_voltage_range, %struct.vctrl_voltage_range* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99, %90
  br label %127

106:                                              ; preds = %99
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %109 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i32 %107, i32* %114, align 4
  %115 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @vctrl_calc_output_voltage(%struct.vctrl_data* %115, i32 %116)
  %118 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %119 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  store i32 %117, i32* %124, align 4
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %106, %105
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %86

130:                                              ; preds = %86
  %131 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %132 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %135 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @vctrl_cmp_ctrl_uV, align 4
  %138 = call i32 @sort(%struct.TYPE_5__* %133, i32 %136, i32 4, i32 %137, i32* null)
  %139 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %140 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %215, %130
  %144 = load i32, i32* %10, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %218

146:                                              ; preds = %143
  %147 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %148 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %156 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 100, %157
  %159 = mul nsw i32 %154, %158
  %160 = sdiv i32 %159, 100
  store i32 %160, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %161

161:                                              ; preds = %186, %146
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %189

165:                                              ; preds = %161
  %166 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %167 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %166, i32 0, i32 1
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp sge i32 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %165
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %179 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %178, i32 0, i32 1
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 2
  store i32 %177, i32* %184, align 4
  br label %189

185:                                              ; preds = %165
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %161

189:                                              ; preds = %176, %161
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %214

193:                                              ; preds = %189
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 0
  %196 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %197 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %196, i32 0, i32 1
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @dev_warn(i32* %195, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* %10, align 4
  %206 = sub nsw i32 %205, 1
  %207 = load %struct.vctrl_data*, %struct.vctrl_data** %4, align 8
  %208 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %207, i32 0, i32 1
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  store i32 %206, i32* %213, align 4
  br label %214

214:                                              ; preds = %193, %189
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %10, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %10, align 4
  br label %143

218:                                              ; preds = %143
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %218, %82, %62
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local %struct.vctrl_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @regulator_count_voltages(%struct.regulator*) #1

declare dso_local i32 @regulator_list_voltage(%struct.regulator*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.TYPE_5__* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @vctrl_calc_output_voltage(%struct.vctrl_data*, i32) #1

declare dso_local i32 @sort(%struct.TYPE_5__*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
