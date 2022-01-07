; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c6410_rtc_restore_tick_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c6410_rtc_restore_tick_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_rtc = type { i32, i64, i32 }

@S3C2410_TICNT = common dso_local global i64 0, align 8
@S3C2410_RTCCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_rtc*)* @s3c6410_rtc_restore_tick_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c6410_rtc_restore_tick_cnt(%struct.s3c_rtc* %0) #0 {
  %2 = alloca %struct.s3c_rtc*, align 8
  %3 = alloca i32, align 4
  store %struct.s3c_rtc* %0, %struct.s3c_rtc** %2, align 8
  %4 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %5 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %8 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @S3C2410_TICNT, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  %13 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %14 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %19 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @S3C2410_RTCCON, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readw(i64 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %26 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %24, %27
  %29 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %30 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @S3C2410_RTCCON, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writew(i32 %28, i64 %33)
  br label %35

35:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
