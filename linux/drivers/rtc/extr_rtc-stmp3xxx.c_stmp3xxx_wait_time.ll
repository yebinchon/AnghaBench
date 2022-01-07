; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_wait_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_wait_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp3xxx_rtc_data = type { i64 }

@STMP3XXX_RTC_STAT = common dso_local global i64 0, align 8
@STMP3XXX_RTC_STAT_STALE_SHIFT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmp3xxx_rtc_data*)* @stmp3xxx_wait_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmp3xxx_wait_time(%struct.stmp3xxx_rtc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmp3xxx_rtc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.stmp3xxx_rtc_data* %0, %struct.stmp3xxx_rtc_data** %3, align 8
  store i32 5000, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %3, align 8
  %7 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @STMP3XXX_RTC_STAT, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  %12 = load i32, i32* @STMP3XXX_RTC_STAT_STALE_SHIFT, align 4
  %13 = shl i32 128, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %40

17:                                               ; preds = %5
  %18 = call i32 @udelay(i32 1)
  br label %19

19:                                               ; preds = %17
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %5, label %23

23:                                               ; preds = %19
  %24 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %3, align 8
  %25 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STMP3XXX_RTC_STAT, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  %30 = load i32, i32* @STMP3XXX_RTC_STAT_STALE_SHIFT, align 4
  %31 = shl i32 128, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @ETIME, align 4
  %36 = sub nsw i32 0, %35
  br label %38

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
