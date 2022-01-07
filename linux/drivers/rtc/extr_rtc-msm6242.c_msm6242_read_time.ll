; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-msm6242.c_msm6242_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-msm6242.c_msm6242_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.msm6242_priv = type { i32 }

@MSM6242_SECOND10 = common dso_local global i32 0, align 4
@MSM6242_SECOND1 = common dso_local global i32 0, align 4
@MSM6242_MINUTE10 = common dso_local global i32 0, align 4
@MSM6242_MINUTE1 = common dso_local global i32 0, align 4
@MSM6242_HOUR10 = common dso_local global i32 0, align 4
@MSM6242_HOUR1 = common dso_local global i32 0, align 4
@MSM6242_DAY10 = common dso_local global i32 0, align 4
@MSM6242_DAY1 = common dso_local global i32 0, align 4
@MSM6242_WEEK = common dso_local global i32 0, align 4
@MSM6242_MONTH10 = common dso_local global i32 0, align 4
@MSM6242_MONTH1 = common dso_local global i32 0, align 4
@MSM6242_YEAR10 = common dso_local global i32 0, align 4
@MSM6242_YEAR1 = common dso_local global i32 0, align 4
@MSM6242_CF = common dso_local global i32 0, align 4
@MSM6242_CF_24H = common dso_local global i32 0, align 4
@MSM6242_HOUR10_PM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @msm6242_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm6242_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.msm6242_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.msm6242_priv* @dev_get_drvdata(%struct.device* %7)
  store %struct.msm6242_priv* %8, %struct.msm6242_priv** %5, align 8
  %9 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %10 = call i32 @msm6242_lock(%struct.msm6242_priv* %9)
  %11 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %12 = load i32, i32* @MSM6242_SECOND10, align 4
  %13 = call i32 @msm6242_read(%struct.msm6242_priv* %11, i32 %12)
  %14 = mul nsw i32 %13, 10
  %15 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %16 = load i32, i32* @MSM6242_SECOND1, align 4
  %17 = call i32 @msm6242_read(%struct.msm6242_priv* %15, i32 %16)
  %18 = add nsw i32 %14, %17
  %19 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %22 = load i32, i32* @MSM6242_MINUTE10, align 4
  %23 = call i32 @msm6242_read(%struct.msm6242_priv* %21, i32 %22)
  %24 = mul nsw i32 %23, 10
  %25 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %26 = load i32, i32* @MSM6242_MINUTE1, align 4
  %27 = call i32 @msm6242_read(%struct.msm6242_priv* %25, i32 %26)
  %28 = add nsw i32 %24, %27
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %32 = load i32, i32* @MSM6242_HOUR10, align 4
  %33 = and i32 %32, 3
  %34 = call i32 @msm6242_read(%struct.msm6242_priv* %31, i32 %33)
  %35 = mul nsw i32 %34, 10
  %36 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %37 = load i32, i32* @MSM6242_HOUR1, align 4
  %38 = call i32 @msm6242_read(%struct.msm6242_priv* %36, i32 %37)
  %39 = add nsw i32 %35, %38
  %40 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %43 = load i32, i32* @MSM6242_DAY10, align 4
  %44 = call i32 @msm6242_read(%struct.msm6242_priv* %42, i32 %43)
  %45 = mul nsw i32 %44, 10
  %46 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %47 = load i32, i32* @MSM6242_DAY1, align 4
  %48 = call i32 @msm6242_read(%struct.msm6242_priv* %46, i32 %47)
  %49 = add nsw i32 %45, %48
  %50 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %53 = load i32, i32* @MSM6242_WEEK, align 4
  %54 = call i32 @msm6242_read(%struct.msm6242_priv* %52, i32 %53)
  %55 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %58 = load i32, i32* @MSM6242_MONTH10, align 4
  %59 = call i32 @msm6242_read(%struct.msm6242_priv* %57, i32 %58)
  %60 = mul nsw i32 %59, 10
  %61 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %62 = load i32, i32* @MSM6242_MONTH1, align 4
  %63 = call i32 @msm6242_read(%struct.msm6242_priv* %61, i32 %62)
  %64 = add nsw i32 %60, %63
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %69 = load i32, i32* @MSM6242_YEAR10, align 4
  %70 = call i32 @msm6242_read(%struct.msm6242_priv* %68, i32 %69)
  %71 = mul nsw i32 %70, 10
  %72 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %73 = load i32, i32* @MSM6242_YEAR1, align 4
  %74 = call i32 @msm6242_read(%struct.msm6242_priv* %72, i32 %73)
  %75 = add nsw i32 %71, %74
  %76 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %79 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %80, 69
  br i1 %81, label %82, label %87

82:                                               ; preds = %2
  %83 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 100
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %2
  %88 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %89 = load i32, i32* @MSM6242_CF, align 4
  %90 = call i32 @msm6242_read(%struct.msm6242_priv* %88, i32 %89)
  %91 = load i32, i32* @MSM6242_CF_24H, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %87
  %95 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %96 = load i32, i32* @MSM6242_HOUR10, align 4
  %97 = call i32 @msm6242_read(%struct.msm6242_priv* %95, i32 %96)
  %98 = load i32, i32* @MSM6242_HOUR10_PM, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %94
  %103 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 12
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 2
  store i32 0, i32* %109, align 4
  br label %124

110:                                              ; preds = %102, %94
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %115 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 12
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %120 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 12
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %118, %113, %110
  br label %124

124:                                              ; preds = %123, %107
  br label %125

125:                                              ; preds = %124, %87
  %126 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %127 = call i32 @msm6242_unlock(%struct.msm6242_priv* %126)
  ret i32 0
}

declare dso_local %struct.msm6242_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @msm6242_lock(%struct.msm6242_priv*) #1

declare dso_local i32 @msm6242_read(%struct.msm6242_priv*, i32) #1

declare dso_local i32 @msm6242_unlock(%struct.msm6242_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
