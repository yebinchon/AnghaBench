; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ls1x.c_ls1x_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ls1x.c_ls1x_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }

@SYS_TOYREAD0 = common dso_local global i32 0, align 4
@SYS_TOYREAD1 = common dso_local global i32 0, align 4
@LS1X_YEAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ls1x_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls1x_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load i32, i32* @SYS_TOYREAD0, align 4
  %8 = call i8* @readl(i32 %7)
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* @SYS_TOYREAD1, align 4
  %11 = call i8* @readl(i32 %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %14 = call i32 @memset(%struct.rtc_time* %13, i32 0, i32 4)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @LS1X_YEAR_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @ls1x_get_month(i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @ls1x_get_day(i64 %20)
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @ls1x_get_hour(i64 %22)
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @ls1x_get_min(i64 %24)
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ls1x_get_sec(i64 %26)
  %28 = call i32 @mktime64(i32 %17, i32 %19, i32 %21, i32 %23, i32 %25, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %31 = call i32 @rtc_time64_to_tm(i32 %29, %struct.rtc_time* %30)
  ret i32 0
}

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @memset(%struct.rtc_time*, i32, i32) #1

declare dso_local i32 @mktime64(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ls1x_get_month(i64) #1

declare dso_local i32 @ls1x_get_day(i64) #1

declare dso_local i32 @ls1x_get_hour(i64) #1

declare dso_local i32 @ls1x_get_min(i64) #1

declare dso_local i32 @ls1x_get_sec(i64) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
