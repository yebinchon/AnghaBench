; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c24xx_rtc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c24xx_rtc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_rtc = type { i64 }

@S3C2410_RTCCON = common dso_local global i64 0, align 8
@S3C2410_RTCCON_RTCEN = common dso_local global i32 0, align 4
@S3C2410_TICNT = common dso_local global i64 0, align 8
@S3C2410_TICNT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_rtc*)* @s3c24xx_rtc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_rtc_disable(%struct.s3c_rtc* %0) #0 {
  %2 = alloca %struct.s3c_rtc*, align 8
  %3 = alloca i32, align 4
  store %struct.s3c_rtc* %0, %struct.s3c_rtc** %2, align 8
  %4 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %5 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @S3C2410_RTCCON, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readw(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @S3C2410_RTCCON_RTCEN, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %16 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @S3C2410_RTCCON, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writew(i32 %14, i64 %19)
  %21 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %22 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @S3C2410_TICNT, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readb(i64 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @S3C2410_TICNT_ENABLE, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %33 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @S3C2410_TICNT, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writeb(i32 %31, i64 %36)
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
