; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_dryice_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_dryice_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.imxdi_dev = type { i32, i64 }

@DCAMR = common dso_local global i64 0, align 8
@DIER = common dso_local global i64 0, align 8
@DIER_CAIE = common dso_local global i32 0, align 4
@DSR = common dso_local global i64 0, align 8
@DSR_CAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @dryice_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dryice_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.imxdi_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.imxdi_dev* @dev_get_drvdata(%struct.device* %7)
  store %struct.imxdi_dev* %8, %struct.imxdi_dev** %5, align 8
  %9 = load %struct.imxdi_dev*, %struct.imxdi_dev** %5, align 8
  %10 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DCAMR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %17 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %16, i32 0, i32 2
  %18 = call i32 @rtc_time64_to_tm(i32 %15, i32* %17)
  %19 = load %struct.imxdi_dev*, %struct.imxdi_dev** %5, align 8
  %20 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DIER, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  %25 = load i32, i32* @DIER_CAIE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.imxdi_dev*, %struct.imxdi_dev** %5, align 8
  %32 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.imxdi_dev*, %struct.imxdi_dev** %5, align 8
  %35 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DSR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  %40 = load i32, i32* @DSR_CAF, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.imxdi_dev*, %struct.imxdi_dev** %5, align 8
  %47 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  ret i32 0
}

declare dso_local %struct.imxdi_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @rtc_time64_to_tm(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
