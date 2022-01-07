; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rp5c01.c_rp5c01_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rp5c01.c_rp5c01_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rp5c01_priv = type { i32 }

@RP5C01_10_SECOND = common dso_local global i32 0, align 4
@RP5C01_1_SECOND = common dso_local global i32 0, align 4
@RP5C01_10_MINUTE = common dso_local global i32 0, align 4
@RP5C01_1_MINUTE = common dso_local global i32 0, align 4
@RP5C01_10_HOUR = common dso_local global i32 0, align 4
@RP5C01_1_HOUR = common dso_local global i32 0, align 4
@RP5C01_10_DAY = common dso_local global i32 0, align 4
@RP5C01_1_DAY = common dso_local global i32 0, align 4
@RP5C01_DAY_OF_WEEK = common dso_local global i32 0, align 4
@RP5C01_10_MONTH = common dso_local global i32 0, align 4
@RP5C01_1_MONTH = common dso_local global i32 0, align 4
@RP5C01_10_YEAR = common dso_local global i32 0, align 4
@RP5C01_1_YEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rp5c01_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rp5c01_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.rp5c01_priv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.rp5c01_priv* @dev_get_drvdata(%struct.device* %6)
  store %struct.rp5c01_priv* %7, %struct.rp5c01_priv** %5, align 8
  %8 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %9 = getelementptr inbounds %struct.rp5c01_priv, %struct.rp5c01_priv* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %12 = call i32 @rp5c01_lock(%struct.rp5c01_priv* %11)
  %13 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %14 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 10
  %18 = load i32, i32* @RP5C01_10_SECOND, align 4
  %19 = call i32 @rp5c01_write(%struct.rp5c01_priv* %13, i32 %17, i32 %18)
  %20 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = srem i32 %23, 10
  %25 = load i32, i32* @RP5C01_1_SECOND, align 4
  %26 = call i32 @rp5c01_write(%struct.rp5c01_priv* %20, i32 %24, i32 %25)
  %27 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %28 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 10
  %32 = load i32, i32* @RP5C01_10_MINUTE, align 4
  %33 = call i32 @rp5c01_write(%struct.rp5c01_priv* %27, i32 %31, i32 %32)
  %34 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %37, 10
  %39 = load i32, i32* @RP5C01_1_MINUTE, align 4
  %40 = call i32 @rp5c01_write(%struct.rp5c01_priv* %34, i32 %38, i32 %39)
  %41 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 10
  %46 = load i32, i32* @RP5C01_10_HOUR, align 4
  %47 = call i32 @rp5c01_write(%struct.rp5c01_priv* %41, i32 %45, i32 %46)
  %48 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %49 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = srem i32 %51, 10
  %53 = load i32, i32* @RP5C01_1_HOUR, align 4
  %54 = call i32 @rp5c01_write(%struct.rp5c01_priv* %48, i32 %52, i32 %53)
  %55 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %56 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 10
  %60 = load i32, i32* @RP5C01_10_DAY, align 4
  %61 = call i32 @rp5c01_write(%struct.rp5c01_priv* %55, i32 %59, i32 %60)
  %62 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %63 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %65, 10
  %67 = load i32, i32* @RP5C01_1_DAY, align 4
  %68 = call i32 @rp5c01_write(%struct.rp5c01_priv* %62, i32 %66, i32 %67)
  %69 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %80

73:                                               ; preds = %2
  %74 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %75 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RP5C01_DAY_OF_WEEK, align 4
  %79 = call i32 @rp5c01_write(%struct.rp5c01_priv* %74, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %2
  %81 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %82 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  %86 = sdiv i32 %85, 10
  %87 = load i32, i32* @RP5C01_10_MONTH, align 4
  %88 = call i32 @rp5c01_write(%struct.rp5c01_priv* %81, i32 %86, i32 %87)
  %89 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %90 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %91 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  %94 = srem i32 %93, 10
  %95 = load i32, i32* @RP5C01_1_MONTH, align 4
  %96 = call i32 @rp5c01_write(%struct.rp5c01_priv* %89, i32 %94, i32 %95)
  %97 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 100
  br i1 %100, label %101, label %106

101:                                              ; preds = %80
  %102 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 100
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %80
  %107 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %108 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = sdiv i32 %110, 10
  %112 = load i32, i32* @RP5C01_10_YEAR, align 4
  %113 = call i32 @rp5c01_write(%struct.rp5c01_priv* %107, i32 %111, i32 %112)
  %114 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %115 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %116 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = srem i32 %117, 10
  %119 = load i32, i32* @RP5C01_1_YEAR, align 4
  %120 = call i32 @rp5c01_write(%struct.rp5c01_priv* %114, i32 %118, i32 %119)
  %121 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %122 = call i32 @rp5c01_unlock(%struct.rp5c01_priv* %121)
  %123 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %124 = getelementptr inbounds %struct.rp5c01_priv, %struct.rp5c01_priv* %123, i32 0, i32 0
  %125 = call i32 @spin_unlock_irq(i32* %124)
  ret i32 0
}

declare dso_local %struct.rp5c01_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rp5c01_lock(%struct.rp5c01_priv*) #1

declare dso_local i32 @rp5c01_write(%struct.rp5c01_priv*, i32, i32) #1

declare dso_local i32 @rp5c01_unlock(%struct.rp5c01_priv*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
