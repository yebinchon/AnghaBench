; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c6410_rtc_enable_tick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c6410_rtc_enable_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_rtc = type { i64 }
%struct.seq_file = type { i32 }

@S3C2410_RTCCON = common dso_local global i64 0, align 8
@S3C64XX_RTCCON_TICEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"periodic_IRQ\09: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_rtc*, %struct.seq_file*)* @s3c6410_rtc_enable_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c6410_rtc_enable_tick(%struct.s3c_rtc* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.s3c_rtc*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  store %struct.s3c_rtc* %0, %struct.s3c_rtc** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load %struct.s3c_rtc*, %struct.s3c_rtc** %3, align 8
  %7 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @S3C2410_RTCCON, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readw(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @S3C64XX_RTCCON_TICEN, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %19)
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
