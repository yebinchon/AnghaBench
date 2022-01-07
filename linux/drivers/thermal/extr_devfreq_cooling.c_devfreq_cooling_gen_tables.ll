; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_devfreq_cooling_gen_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_devfreq_cooling_gen_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_cooling_device = type { i64*, i64*, i32, %struct.TYPE_4__*, %struct.devfreq* }
%struct.TYPE_4__ = type { i64 }
%struct.devfreq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dev_pm_opp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Power table: %lu MHz @ %lu mV: %lu = %lu mW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq_cooling_device*)* @devfreq_cooling_gen_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfreq_cooling_gen_tables(%struct.devfreq_cooling_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devfreq_cooling_device*, align 8
  %4 = alloca %struct.devfreq*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.dev_pm_opp*, align 8
  store %struct.devfreq_cooling_device* %0, %struct.devfreq_cooling_device** %3, align 8
  %15 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %16 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %15, i32 0, i32 4
  %17 = load %struct.devfreq*, %struct.devfreq** %16, align 8
  store %struct.devfreq* %17, %struct.devfreq** %4, align 8
  %18 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %19 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %5, align 8
  store i64* null, i64** %9, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i32 @dev_pm_opp_get_opp_count(%struct.device* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %25 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i64* @kcalloc(i32 %29, i32 8, i32 %30)
  store i64* %31, i64** %9, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %137

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i64* @kcalloc(i32 %39, i32 8, i32 %40)
  store i64* %41, i64** %10, align 8
  %42 = load i64*, i64** %10, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %133

47:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  %48 = load i64, i64* @ULONG_MAX, align 8
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %109, %47
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %114

53:                                               ; preds = %49
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_floor(%struct.device* %54, i64* %8)
  store %struct.dev_pm_opp* %55, %struct.dev_pm_opp** %14, align 8
  %56 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %14, align 8
  %57 = call i64 @IS_ERR(%struct.dev_pm_opp* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %14, align 8
  %61 = call i32 @PTR_ERR(%struct.dev_pm_opp* %60)
  store i32 %61, i32* %6, align 4
  br label %130

62:                                               ; preds = %53
  %63 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %14, align 8
  %64 = call i32 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %63)
  %65 = sdiv i32 %64, 1000
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %13, align 8
  %67 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %14, align 8
  %68 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %67)
  %69 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %70 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %103

73:                                               ; preds = %62
  %74 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %75 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i64 @get_total_power(%struct.devfreq_cooling_device* %81, i64 %82, i64 %83)
  store i64 %84, i64* %12, align 8
  br label %90

85:                                               ; preds = %73
  %86 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %13, align 8
  %89 = call i64 @get_dynamic_power(%struct.devfreq_cooling_device* %86, i64 %87, i64 %88)
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load i64, i64* %8, align 8
  %93 = udiv i64 %92, 1000000
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @dev_dbg(%struct.device* %91, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %93, i64 %94, i64 %95, i64 %96)
  %98 = load i64, i64* %12, align 8
  %99 = load i64*, i64** %9, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 %98, i64* %102, align 8
  br label %103

103:                                              ; preds = %90, %62
  %104 = load i64, i64* %8, align 8
  %105 = load i64*, i64** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64 %104, i64* %108, align 8
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  %112 = load i64, i64* %8, align 8
  %113 = add i64 %112, -1
  store i64 %113, i64* %8, align 8
  br label %49

114:                                              ; preds = %49
  %115 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %116 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %115, i32 0, i32 3
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = icmp ne %struct.TYPE_4__* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i64*, i64** %9, align 8
  %121 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %122 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %121, i32 0, i32 0
  store i64* %120, i64** %122, align 8
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i64*, i64** %10, align 8
  %125 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %126 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %125, i32 0, i32 1
  store i64* %124, i64** %126, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %3, align 8
  %129 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  store i32 0, i32* %2, align 4
  br label %137

130:                                              ; preds = %59
  %131 = load i64*, i64** %10, align 8
  %132 = call i32 @kfree(i64* %131)
  br label %133

133:                                              ; preds = %130, %44
  %134 = load i64*, i64** %9, align 8
  %135 = call i32 @kfree(i64* %134)
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %133, %123, %34
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @dev_pm_opp_get_opp_count(%struct.device*) #1

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_floor(%struct.device*, i64*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i64 @get_total_power(%struct.devfreq_cooling_device*, i64, i64) #1

declare dso_local i64 @get_dynamic_power(%struct.devfreq_cooling_device*, i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
