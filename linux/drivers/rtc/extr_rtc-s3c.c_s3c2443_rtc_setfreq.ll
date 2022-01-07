; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c2443_rtc_setfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c2443_rtc_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_rtc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@S3C2410_TICNT = common dso_local global i64 0, align 8
@S3C2410_TICNT_ENABLE = common dso_local global i32 0, align 4
@S3C2443_TICNT1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_rtc*, i32)* @s3c2443_rtc_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2443_rtc_setfreq(%struct.s3c_rtc* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c_rtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s3c_rtc* %0, %struct.s3c_rtc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.s3c_rtc*, %struct.s3c_rtc** %3, align 8
  %8 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @S3C2410_TICNT, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readb(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @S3C2410_TICNT_ENABLE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.s3c_rtc*, %struct.s3c_rtc** %3, align 8
  %17 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %20, %21
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @S3C2443_TICNT_PART(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @S3C2443_TICNT1_PART(i32 %28)
  %30 = load %struct.s3c_rtc*, %struct.s3c_rtc** %3, align 8
  %31 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @S3C2443_TICNT1, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.s3c_rtc*, %struct.s3c_rtc** %3, align 8
  %38 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @S3C2410_TICNT, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  ret void
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @S3C2443_TICNT_PART(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @S3C2443_TICNT1_PART(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
