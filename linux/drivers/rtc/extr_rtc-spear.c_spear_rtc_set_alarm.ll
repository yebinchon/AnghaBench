; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-spear.c_spear_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-spear.c_spear_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.spear_rtc_config = type { i64 }

@SECOND_SHIFT = common dso_local global i32 0, align 4
@MINUTE_SHIFT = common dso_local global i32 0, align 4
@HOUR_SHIFT = common dso_local global i32 0, align 4
@MDAY_SHIFT = common dso_local global i32 0, align 4
@MONTH_SHIFT = common dso_local global i32 0, align 4
@YEAR_SHIFT = common dso_local global i32 0, align 4
@ALARM_TIME_REG = common dso_local global i64 0, align 8
@ALARM_DATE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @spear_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.spear_rtc_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.spear_rtc_config* @dev_get_drvdata(%struct.device* %10)
  store %struct.spear_rtc_config* %11, %struct.spear_rtc_config** %6, align 8
  %12 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %12, i32 0, i32 1
  %14 = call i32 @tm2bcd(%struct.TYPE_2__* %13)
  %15 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %6, align 8
  %16 = call i32 @rtc_wait_not_busy(%struct.spear_rtc_config* %15)
  %17 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %18 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SECOND_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MINUTE_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %22, %28
  %30 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @HOUR_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %29, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MDAY_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MONTH_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %42, %48
  %50 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @YEAR_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %49, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %6, align 8
  %59 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ALARM_TIME_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %6, align 8
  %66 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ALARM_DATE_REG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  %71 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %6, align 8
  %72 = call i32 @is_write_complete(%struct.spear_rtc_config* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %2
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %89

77:                                               ; preds = %2
  %78 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %79 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %6, align 8
  %84 = call i32 @spear_rtc_enable_interrupt(%struct.spear_rtc_config* %83)
  br label %88

85:                                               ; preds = %77
  %86 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %6, align 8
  %87 = call i32 @spear_rtc_disable_interrupt(%struct.spear_rtc_config* %86)
  br label %88

88:                                               ; preds = %85, %82
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.spear_rtc_config* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tm2bcd(%struct.TYPE_2__*) #1

declare dso_local i32 @rtc_wait_not_busy(%struct.spear_rtc_config*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @is_write_complete(%struct.spear_rtc_config*) #1

declare dso_local i32 @spear_rtc_enable_interrupt(%struct.spear_rtc_config*) #1

declare dso_local i32 @spear_rtc_disable_interrupt(%struct.spear_rtc_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
