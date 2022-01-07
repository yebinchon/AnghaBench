; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_settime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.s3c_rtc = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"set time %ptR\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"rtc only supports 100 years\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S3C2410_RTCSEC = common dso_local global i64 0, align 8
@S3C2410_RTCMIN = common dso_local global i64 0, align 8
@S3C2410_RTCHOUR = common dso_local global i64 0, align 8
@S3C2410_RTCDATE = common dso_local global i64 0, align 8
@S3C2410_RTCMON = common dso_local global i64 0, align 8
@S3C2410_RTCYEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @s3c_rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_rtc_settime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.s3c_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.s3c_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.s3c_rtc* %10, %struct.s3c_rtc** %6, align 8
  %11 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 100
  store i32 %14, i32* %7, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %17 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.rtc_time* %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 100
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %97

28:                                               ; preds = %20
  %29 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %30 = call i32 @s3c_rtc_enable_clk(%struct.s3c_rtc* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %97

35:                                               ; preds = %28
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bin2bcd(i32 %38)
  %40 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %41 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @S3C2410_RTCSEC, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writeb(i32 %39, i64 %44)
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bin2bcd(i32 %48)
  %50 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %51 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @S3C2410_RTCMIN, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writeb(i32 %49, i64 %54)
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bin2bcd(i32 %58)
  %60 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %61 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @S3C2410_RTCHOUR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writeb(i32 %59, i64 %64)
  %66 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bin2bcd(i32 %68)
  %70 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %71 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @S3C2410_RTCDATE, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writeb(i32 %69, i64 %74)
  %76 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @bin2bcd(i32 %79)
  %81 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %82 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @S3C2410_RTCMON, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writeb(i32 %80, i64 %85)
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @bin2bcd(i32 %87)
  %89 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %90 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @S3C2410_RTCYEAR, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writeb(i32 %88, i64 %93)
  %95 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %96 = call i32 @s3c_rtc_disable_clk(%struct.s3c_rtc* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %35, %33, %23
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.s3c_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.rtc_time*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @s3c_rtc_enable_clk(%struct.s3c_rtc*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @s3c_rtc_disable_clk(%struct.s3c_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
