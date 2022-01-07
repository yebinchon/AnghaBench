; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c24xx_rtc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c24xx_rtc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_rtc = type { i64, i32 }

@S3C2410_RTCCON = common dso_local global i64 0, align 8
@S3C2410_RTCCON_RTCEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"rtc disabled, re-enabling\0A\00", align 1
@S3C2410_RTCCON_CNTSEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"removing RTCCON_CNTSEL\0A\00", align 1
@S3C2410_RTCCON_CLKRST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"removing RTCCON_CLKRST\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_rtc*)* @s3c24xx_rtc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_rtc_enable(%struct.s3c_rtc* %0) #0 {
  %2 = alloca %struct.s3c_rtc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.s3c_rtc* %0, %struct.s3c_rtc** %2, align 8
  %5 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %6 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @S3C2410_RTCCON, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readw(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @S3C2410_RTCCON_RTCEN, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %17 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_info(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %21 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @S3C2410_RTCCON, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readw(i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @S3C2410_RTCCON_RTCEN, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %30 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @S3C2410_RTCCON, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writew(i32 %28, i64 %33)
  br label %35

35:                                               ; preds = %15, %1
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @S3C2410_RTCCON_CNTSEL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %42 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_info(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %46 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @S3C2410_RTCCON, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readw(i64 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @S3C2410_RTCCON_CNTSEL, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %56 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @S3C2410_RTCCON, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writew(i32 %54, i64 %59)
  br label %61

61:                                               ; preds = %40, %35
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @S3C2410_RTCCON_CLKRST, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %61
  %67 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %68 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_info(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %72 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @S3C2410_RTCCON, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readw(i64 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @S3C2410_RTCCON_CLKRST, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = load %struct.s3c_rtc*, %struct.s3c_rtc** %2, align 8
  %82 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @S3C2410_RTCCON, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writew(i32 %80, i64 %85)
  br label %87

87:                                               ; preds = %66, %61
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
