; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_partition_enable_opps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_partition_enable_opps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_cooling_device = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dev_pm_opp = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq_cooling_device*, i64)* @partition_enable_opps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_enable_opps(%struct.devfreq_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devfreq_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.dev_pm_opp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.devfreq_cooling_device* %0, %struct.devfreq_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %4, align 8
  %13 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %7, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %78, %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %4, align 8
  %21 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  %25 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %4, align 8
  %26 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %5, align 8
  %35 = icmp uge i64 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %11, align 4
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_exact(%struct.device* %38, i32 %39, i32 %43)
  store %struct.dev_pm_opp* %44, %struct.dev_pm_opp** %8, align 8
  %45 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %46 = call i32 @PTR_ERR(%struct.dev_pm_opp* %45)
  %47 = load i32, i32* @ERANGE, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %24
  br label %78

51:                                               ; preds = %24
  %52 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %53 = call i64 @IS_ERR(%struct.dev_pm_opp* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %57 = call i32 @PTR_ERR(%struct.dev_pm_opp* %56)
  store i32 %57, i32* %3, align 4
  br label %82

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %61 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %60)
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @dev_pm_opp_enable(%struct.device* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.device*, %struct.device** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @dev_pm_opp_disable(%struct.device* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %82

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %50
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %18

81:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %75, %55
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_exact(%struct.device*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_enable(%struct.device*, i32) #1

declare dso_local i32 @dev_pm_opp_disable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
