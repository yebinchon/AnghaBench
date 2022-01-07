; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_intel_soc_dts_iosf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_intel_soc_dts_iosf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_soc_dts_sensors = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.intel_soc_dts_sensors* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INTEL_SOC_DTS_INTERRUPT_NONE = common dso_local global i32 0, align 4
@SOC_MAX_DTS_SENSORS = common dso_local global i32 0, align 4
@THERMAL_TRIP_PASSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_soc_dts_sensors* @intel_soc_dts_iosf_init(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_soc_dts_sensors*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_soc_dts_sensors*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = call i32 (...) @iosf_mbi_available()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.intel_soc_dts_sensors* @ERR_PTR(i32 %17)
  store %struct.intel_soc_dts_sensors* %18, %struct.intel_soc_dts_sensors** %4, align 8
  br label %153

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.intel_soc_dts_sensors* @ERR_PTR(i32 %28)
  store %struct.intel_soc_dts_sensors* %29, %struct.intel_soc_dts_sensors** %4, align 8
  br label %153

30:                                               ; preds = %22
  %31 = call i64 @get_tj_max(i32* %10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.intel_soc_dts_sensors* @ERR_PTR(i32 %35)
  store %struct.intel_soc_dts_sensors* %36, %struct.intel_soc_dts_sensors** %4, align 8
  br label %153

37:                                               ; preds = %30
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.intel_soc_dts_sensors* @kzalloc(i32 32, i32 %38)
  store %struct.intel_soc_dts_sensors* %39, %struct.intel_soc_dts_sensors** %8, align 8
  %40 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  %41 = icmp ne %struct.intel_soc_dts_sensors* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.intel_soc_dts_sensors* @ERR_PTR(i32 %44)
  store %struct.intel_soc_dts_sensors* %45, %struct.intel_soc_dts_sensors** %4, align 8
  br label %153

46:                                               ; preds = %37
  %47 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  %48 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %47, i32 0, i32 4
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  %51 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %50, i32 0, i32 3
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  %55 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  %58 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @INTEL_SOC_DTS_INTERRUPT_NONE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %64

63:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %62
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %93, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @SOC_MAX_DTS_SENSORS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %65
  %70 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  %71 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  %72 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store %struct.intel_soc_dts_sensors* %70, %struct.intel_soc_dts_sensors** %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  %80 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @add_dts_thermal_zone(i32 %78, %struct.TYPE_4__* %84, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %69
  br label %148

92:                                               ; preds = %69
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %65

96:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %126, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @SOC_MAX_DTS_SENSORS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %97
  %102 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  %103 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = load i32, i32* @THERMAL_TRIP_PASSIVE, align 4
  %109 = call i32 @update_trip_temp(%struct.TYPE_4__* %107, i32 0, i32 0, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  br label %131

113:                                              ; preds = %101
  %114 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  %115 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = load i32, i32* @THERMAL_TRIP_PASSIVE, align 4
  %121 = call i32 @update_trip_temp(%struct.TYPE_4__* %119, i32 1, i32 0, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  br label %131

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %97

129:                                              ; preds = %97
  %130 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  store %struct.intel_soc_dts_sensors* %130, %struct.intel_soc_dts_sensors** %4, align 8
  br label %153

131:                                              ; preds = %124, %112
  store i32 0, i32* %12, align 4
  br label %132

132:                                              ; preds = %144, %131
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @SOC_MAX_DTS_SENSORS, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  %138 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = call i32 @remove_dts_thermal_zone(%struct.TYPE_4__* %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %132

147:                                              ; preds = %132
  br label %148

148:                                              ; preds = %147, %91
  %149 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %8, align 8
  %150 = call i32 @kfree(%struct.intel_soc_dts_sensors* %149)
  %151 = load i32, i32* %11, align 4
  %152 = call %struct.intel_soc_dts_sensors* @ERR_PTR(i32 %151)
  store %struct.intel_soc_dts_sensors* %152, %struct.intel_soc_dts_sensors** %4, align 8
  br label %153

153:                                              ; preds = %148, %129, %42, %33, %26, %15
  %154 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %4, align 8
  ret %struct.intel_soc_dts_sensors* %154
}

declare dso_local i32 @iosf_mbi_available(...) #1

declare dso_local %struct.intel_soc_dts_sensors* @ERR_PTR(i32) #1

declare dso_local i64 @get_tj_max(i32*) #1

declare dso_local %struct.intel_soc_dts_sensors* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @add_dts_thermal_zone(i32, %struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @update_trip_temp(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @remove_dts_thermal_zone(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.intel_soc_dts_sensors*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
