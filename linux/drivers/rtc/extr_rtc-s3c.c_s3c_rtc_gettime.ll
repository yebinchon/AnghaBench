; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_gettime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64 }
%struct.s3c_rtc = type { i64 }

@S3C2410_RTCMIN = common dso_local global i64 0, align 8
@S3C2410_RTCHOUR = common dso_local global i64 0, align 8
@S3C2410_RTCDATE = common dso_local global i64 0, align 8
@S3C2410_RTCMON = common dso_local global i64 0, align 8
@S3C2410_RTCYEAR = common dso_local global i64 0, align 8
@S3C2410_RTCSEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"read time %ptR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @s3c_rtc_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_rtc_gettime(%struct.device* %0, %struct.rtc_time* %1) #0 {
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
  store i32 0, i32* %7, align 4
  %11 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %12 = call i32 @s3c_rtc_enable_clk(%struct.s3c_rtc* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %137

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %80, %17
  %19 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %20 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @S3C2410_RTCMIN, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i8* @readb(i64 %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %29 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @S3C2410_RTCHOUR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i8* @readb(i64 %32)
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %38 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @S3C2410_RTCDATE, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i8* @readb(i64 %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %47 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @S3C2410_RTCMON, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i8* @readb(i64 %50)
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %56 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @S3C2410_RTCYEAR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i8* @readb(i64 %59)
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %65 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @S3C2410_RTCSEC, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i8* @readb(i64 %68)
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 5
  store i64 %70, i64* %72, align 8
  %73 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %18
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store i32 1, i32* %7, align 4
  br label %18

81:                                               ; preds = %77, %18
  %82 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = call i8* @bcd2bin(i64 %84)
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %88 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %87, i32 0, i32 5
  store i64 %86, i64* %88, align 8
  %89 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @bcd2bin(i64 %91)
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @bcd2bin(i64 %98)
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @bcd2bin(i64 %105)
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = call i8* @bcd2bin(i64 %112)
  %114 = ptrtoint i8* %113 to i64
  %115 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %116 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %115, i32 0, i32 3
  store i64 %114, i64* %116, align 8
  %117 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %118 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @bcd2bin(i64 %119)
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %123 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %122, i32 0, i32 4
  store i64 %121, i64* %123, align 8
  %124 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %125 = call i32 @s3c_rtc_disable_clk(%struct.s3c_rtc* %124)
  %126 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %127 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 100
  store i64 %129, i64* %127, align 8
  %130 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %131 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %136 = call i32 @dev_dbg(%struct.device* %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.rtc_time* %135)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %81, %15
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.s3c_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @s3c_rtc_enable_clk(%struct.s3c_rtc*) #1

declare dso_local i8* @readb(i64) #1

declare dso_local i8* @bcd2bin(i64) #1

declare dso_local i32 @s3c_rtc_disable_clk(%struct.s3c_rtc*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
