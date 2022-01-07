; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pxa.c_tm_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pxa.c_tm_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@RYxR_YEAR_MASK = common dso_local global i32 0, align 4
@RYxR_YEAR_S = common dso_local global i32 0, align 4
@RYxR_MONTH_MASK = common dso_local global i32 0, align 4
@RYxR_MONTH_S = common dso_local global i32 0, align 4
@RYxR_DAY_MASK = common dso_local global i32 0, align 4
@RDxR_DOW_MASK = common dso_local global i32 0, align 4
@RDxR_DOW_S = common dso_local global i32 0, align 4
@RDxR_HOUR_MASK = common dso_local global i32 0, align 4
@RDxR_HOUR_S = common dso_local global i32 0, align 4
@RDxR_MIN_MASK = common dso_local global i32 0, align 4
@RDxR_MIN_S = common dso_local global i32 0, align 4
@RDxR_SEC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.rtc_time*)* @tm_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm_calc(i32 %0, i32 %1, %struct.rtc_time* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtc_time*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.rtc_time* %2, %struct.rtc_time** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RYxR_YEAR_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @RYxR_YEAR_S, align 4
  %11 = ashr i32 %9, %10
  %12 = sub nsw i32 %11, 1900
  %13 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RYxR_MONTH_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @RYxR_MONTH_S, align 4
  %19 = ashr i32 %17, %18
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @RYxR_DAY_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @RDxR_DOW_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @RDxR_DOW_S, align 4
  %32 = ashr i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @RDxR_HOUR_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @RDxR_HOUR_S, align 4
  %40 = ashr i32 %38, %39
  %41 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @RDxR_MIN_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @RDxR_MIN_S, align 4
  %47 = ashr i32 %45, %46
  %48 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @RDxR_SEC_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
