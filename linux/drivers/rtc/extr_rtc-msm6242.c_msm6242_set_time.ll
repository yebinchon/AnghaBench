; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-msm6242.c_msm6242_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-msm6242.c_msm6242_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.msm6242_priv = type { i32 }

@MSM6242_SECOND10 = common dso_local global i32 0, align 4
@MSM6242_SECOND1 = common dso_local global i32 0, align 4
@MSM6242_MINUTE10 = common dso_local global i32 0, align 4
@MSM6242_MINUTE1 = common dso_local global i32 0, align 4
@MSM6242_CF = common dso_local global i32 0, align 4
@MSM6242_CF_24H = common dso_local global i32 0, align 4
@MSM6242_HOUR10 = common dso_local global i32 0, align 4
@MSM6242_HOUR10_PM = common dso_local global i32 0, align 4
@MSM6242_HOUR1 = common dso_local global i32 0, align 4
@MSM6242_DAY10 = common dso_local global i32 0, align 4
@MSM6242_DAY1 = common dso_local global i32 0, align 4
@MSM6242_WEEK = common dso_local global i32 0, align 4
@MSM6242_MONTH10 = common dso_local global i32 0, align 4
@MSM6242_MONTH1 = common dso_local global i32 0, align 4
@MSM6242_YEAR10 = common dso_local global i32 0, align 4
@MSM6242_YEAR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @msm6242_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm6242_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.msm6242_priv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.msm6242_priv* @dev_get_drvdata(%struct.device* %6)
  store %struct.msm6242_priv* %7, %struct.msm6242_priv** %5, align 8
  %8 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %9 = call i32 @msm6242_lock(%struct.msm6242_priv* %8)
  %10 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %11 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %12 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 10
  %15 = load i32, i32* @MSM6242_SECOND10, align 4
  %16 = call i32 @msm6242_write(%struct.msm6242_priv* %10, i32 %14, i32 %15)
  %17 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %18 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %20, 10
  %22 = load i32, i32* @MSM6242_SECOND1, align 4
  %23 = call i32 @msm6242_write(%struct.msm6242_priv* %17, i32 %21, i32 %22)
  %24 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 10
  %29 = load i32, i32* @MSM6242_MINUTE10, align 4
  %30 = call i32 @msm6242_write(%struct.msm6242_priv* %24, i32 %28, i32 %29)
  %31 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %34, 10
  %36 = load i32, i32* @MSM6242_MINUTE1, align 4
  %37 = call i32 @msm6242_write(%struct.msm6242_priv* %31, i32 %35, i32 %36)
  %38 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %39 = load i32, i32* @MSM6242_CF, align 4
  %40 = call i32 @msm6242_read(%struct.msm6242_priv* %38, i32 %39)
  %41 = load i32, i32* @MSM6242_CF_24H, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %2
  %45 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %46 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 10
  %50 = load i32, i32* @MSM6242_HOUR10, align 4
  %51 = call i32 @msm6242_write(%struct.msm6242_priv* %45, i32 %49, i32 %50)
  br label %77

52:                                               ; preds = %2
  %53 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 12
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %59 = load i32, i32* @MSM6242_HOUR10_PM, align 4
  %60 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 12
  %64 = sdiv i32 %63, 10
  %65 = add nsw i32 %59, %64
  %66 = load i32, i32* @MSM6242_HOUR10, align 4
  %67 = call i32 @msm6242_write(%struct.msm6242_priv* %58, i32 %65, i32 %66)
  br label %76

68:                                               ; preds = %52
  %69 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %70 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 10
  %74 = load i32, i32* @MSM6242_HOUR10, align 4
  %75 = call i32 @msm6242_write(%struct.msm6242_priv* %69, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %57
  br label %77

77:                                               ; preds = %76, %44
  %78 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %79 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = srem i32 %81, 10
  %83 = load i32, i32* @MSM6242_HOUR1, align 4
  %84 = call i32 @msm6242_write(%struct.msm6242_priv* %78, i32 %82, i32 %83)
  %85 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %86 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 10
  %90 = load i32, i32* @MSM6242_DAY10, align 4
  %91 = call i32 @msm6242_write(%struct.msm6242_priv* %85, i32 %89, i32 %90)
  %92 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %93 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %94 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = srem i32 %95, 10
  %97 = load i32, i32* @MSM6242_DAY1, align 4
  %98 = call i32 @msm6242_write(%struct.msm6242_priv* %92, i32 %96, i32 %97)
  %99 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %100 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %110

103:                                              ; preds = %77
  %104 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %105 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MSM6242_WEEK, align 4
  %109 = call i32 @msm6242_write(%struct.msm6242_priv* %104, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %103, %77
  %111 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %112 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %113 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  %116 = sdiv i32 %115, 10
  %117 = load i32, i32* @MSM6242_MONTH10, align 4
  %118 = call i32 @msm6242_write(%struct.msm6242_priv* %111, i32 %116, i32 %117)
  %119 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %120 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %121 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  %124 = srem i32 %123, 10
  %125 = load i32, i32* @MSM6242_MONTH1, align 4
  %126 = call i32 @msm6242_write(%struct.msm6242_priv* %119, i32 %124, i32 %125)
  %127 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %128 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %129, 100
  br i1 %130, label %131, label %136

131:                                              ; preds = %110
  %132 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %133 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 100
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %131, %110
  %137 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %138 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %139 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %140, 10
  %142 = load i32, i32* @MSM6242_YEAR10, align 4
  %143 = call i32 @msm6242_write(%struct.msm6242_priv* %137, i32 %141, i32 %142)
  %144 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %145 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %146 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = srem i32 %147, 10
  %149 = load i32, i32* @MSM6242_YEAR1, align 4
  %150 = call i32 @msm6242_write(%struct.msm6242_priv* %144, i32 %148, i32 %149)
  %151 = load %struct.msm6242_priv*, %struct.msm6242_priv** %5, align 8
  %152 = call i32 @msm6242_unlock(%struct.msm6242_priv* %151)
  ret i32 0
}

declare dso_local %struct.msm6242_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @msm6242_lock(%struct.msm6242_priv*) #1

declare dso_local i32 @msm6242_write(%struct.msm6242_priv*, i32, i32) #1

declare dso_local i32 @msm6242_read(%struct.msm6242_priv*, i32) #1

declare dso_local i32 @msm6242_unlock(%struct.msm6242_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
