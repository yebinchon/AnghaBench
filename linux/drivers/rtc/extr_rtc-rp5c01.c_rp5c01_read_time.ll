; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rp5c01.c_rp5c01_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rp5c01.c_rp5c01_read_time.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rp5c01_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rp5c01_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
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
  %14 = load i32, i32* @RP5C01_10_SECOND, align 4
  %15 = call i32 @rp5c01_read(%struct.rp5c01_priv* %13, i32 %14)
  %16 = mul nsw i32 %15, 10
  %17 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %18 = load i32, i32* @RP5C01_1_SECOND, align 4
  %19 = call i32 @rp5c01_read(%struct.rp5c01_priv* %17, i32 %18)
  %20 = add nsw i32 %16, %19
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %24 = load i32, i32* @RP5C01_10_MINUTE, align 4
  %25 = call i32 @rp5c01_read(%struct.rp5c01_priv* %23, i32 %24)
  %26 = mul nsw i32 %25, 10
  %27 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %28 = load i32, i32* @RP5C01_1_MINUTE, align 4
  %29 = call i32 @rp5c01_read(%struct.rp5c01_priv* %27, i32 %28)
  %30 = add nsw i32 %26, %29
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %34 = load i32, i32* @RP5C01_10_HOUR, align 4
  %35 = call i32 @rp5c01_read(%struct.rp5c01_priv* %33, i32 %34)
  %36 = mul nsw i32 %35, 10
  %37 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %38 = load i32, i32* @RP5C01_1_HOUR, align 4
  %39 = call i32 @rp5c01_read(%struct.rp5c01_priv* %37, i32 %38)
  %40 = add nsw i32 %36, %39
  %41 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %44 = load i32, i32* @RP5C01_10_DAY, align 4
  %45 = call i32 @rp5c01_read(%struct.rp5c01_priv* %43, i32 %44)
  %46 = mul nsw i32 %45, 10
  %47 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %48 = load i32, i32* @RP5C01_1_DAY, align 4
  %49 = call i32 @rp5c01_read(%struct.rp5c01_priv* %47, i32 %48)
  %50 = add nsw i32 %46, %49
  %51 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %54 = load i32, i32* @RP5C01_DAY_OF_WEEK, align 4
  %55 = call i32 @rp5c01_read(%struct.rp5c01_priv* %53, i32 %54)
  %56 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %59 = load i32, i32* @RP5C01_10_MONTH, align 4
  %60 = call i32 @rp5c01_read(%struct.rp5c01_priv* %58, i32 %59)
  %61 = mul nsw i32 %60, 10
  %62 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %63 = load i32, i32* @RP5C01_1_MONTH, align 4
  %64 = call i32 @rp5c01_read(%struct.rp5c01_priv* %62, i32 %63)
  %65 = add nsw i32 %61, %64
  %66 = sub nsw i32 %65, 1
  %67 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %70 = load i32, i32* @RP5C01_10_YEAR, align 4
  %71 = call i32 @rp5c01_read(%struct.rp5c01_priv* %69, i32 %70)
  %72 = mul nsw i32 %71, 10
  %73 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %74 = load i32, i32* @RP5C01_1_YEAR, align 4
  %75 = call i32 @rp5c01_read(%struct.rp5c01_priv* %73, i32 %74)
  %76 = add nsw i32 %72, %75
  %77 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 4
  %79 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = icmp sle i32 %81, 69
  br i1 %82, label %83, label %88

83:                                               ; preds = %2
  %84 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 100
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %2
  %89 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %90 = call i32 @rp5c01_unlock(%struct.rp5c01_priv* %89)
  %91 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %5, align 8
  %92 = getelementptr inbounds %struct.rp5c01_priv, %struct.rp5c01_priv* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock_irq(i32* %92)
  ret i32 0
}

declare dso_local %struct.rp5c01_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rp5c01_lock(%struct.rp5c01_priv*) #1

declare dso_local i32 @rp5c01_read(%struct.rp5c01_priv*, i32) #1

declare dso_local i32 @rp5c01_unlock(%struct.rp5c01_priv*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
