; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_update_freq_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_update_freq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_cooling_device = type { i32, %struct.TYPE_2__*, %struct.freq_table* }
%struct.TYPE_2__ = type { i32 }
%struct.freq_table = type { i32, i32 }
%struct.dev_pm_opp = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"No cpu device for cpu %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Number of OPPs not matching with max_levels\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to get opp for %lu frequency\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_cooling_device*, i32)* @update_freq_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_freq_table(%struct.cpufreq_cooling_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_cooling_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.freq_table*, align 8
  %7 = alloca %struct.dev_pm_opp*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cpufreq_cooling_device* %0, %struct.cpufreq_cooling_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %4, align 8
  %17 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %16, i32 0, i32 2
  %18 = load %struct.freq_table*, %struct.freq_table** %17, align 8
  store %struct.freq_table* %18, %struct.freq_table** %6, align 8
  store %struct.device* null, %struct.device** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %4, align 8
  %20 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.device* @get_cpu_device(i32 %24)
  store %struct.device* %25, %struct.device** %8, align 8
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = icmp ne %struct.device* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %115

37:                                               ; preds = %2
  %38 = load %struct.device*, %struct.device** %8, align 8
  %39 = call i32 @dev_pm_opp_get_opp_count(%struct.device* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %115

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %4, align 8
  %47 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = icmp ne i32 %45, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = call i32 @dev_warn(%struct.device* %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %115

56:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %111, %56
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.cpufreq_cooling_device*, %struct.cpufreq_cooling_device** %4, align 8
  %60 = getelementptr inbounds %struct.cpufreq_cooling_device, %struct.cpufreq_cooling_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sle i32 %58, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %57
  %64 = load %struct.freq_table*, %struct.freq_table** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.freq_table, %struct.freq_table* %64, i64 %66
  %68 = getelementptr inbounds %struct.freq_table, %struct.freq_table* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 1000
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %12, align 8
  %72 = load %struct.freq_table*, %struct.freq_table** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.freq_table, %struct.freq_table* %72, i64 %74
  %76 = getelementptr inbounds %struct.freq_table, %struct.freq_table* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 1000
  store i32 %78, i32* %13, align 4
  %79 = load %struct.device*, %struct.device** %8, align 8
  %80 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(%struct.device* %79, i64* %12)
  store %struct.dev_pm_opp* %80, %struct.dev_pm_opp** %7, align 8
  %81 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %82 = call i64 @IS_ERR(%struct.dev_pm_opp* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %63
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %115

90:                                               ; preds = %63
  %91 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %92 = call i32 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %91)
  %93 = sdiv i32 %92, 1000
  store i32 %93, i32* %15, align 4
  %94 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %95 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %94)
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %13, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %15, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %15, align 4
  %102 = mul nsw i32 %100, %101
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @do_div(i32 %103, i32 1000000000)
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.freq_table*, %struct.freq_table** %6, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.freq_table, %struct.freq_table* %106, i64 %108
  %110 = getelementptr inbounds %struct.freq_table, %struct.freq_table* %109, i32 0, i32 1
  store i32 %105, i32* %110, align 4
  br label %111

111:                                              ; preds = %90
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %57

114:                                              ; preds = %57
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %84, %51, %42, %32
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.device* @get_cpu_device(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @dev_pm_opp_get_opp_count(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(%struct.device*, i64*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
