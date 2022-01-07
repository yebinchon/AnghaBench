; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_get_ssn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_get_ssn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1685_priv = type { i32 (%struct.ds1685_priv*, i32)* }

@RTC_BANK1_SSN_MODEL = common dso_local global i32 0, align 4
@RTC_BANK1_SSN_BYTE_1 = common dso_local global i32 0, align 4
@RTC_BANK1_SSN_BYTE_2 = common dso_local global i32 0, align 4
@RTC_BANK1_SSN_BYTE_3 = common dso_local global i32 0, align 4
@RTC_BANK1_SSN_BYTE_4 = common dso_local global i32 0, align 4
@RTC_BANK1_SSN_BYTE_5 = common dso_local global i32 0, align 4
@RTC_BANK1_SSN_BYTE_6 = common dso_local global i32 0, align 4
@RTC_BANK1_SSN_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds1685_priv*, i32*)* @ds1685_rtc_get_ssn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1685_rtc_get_ssn(%struct.ds1685_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.ds1685_priv*, align 8
  %4 = alloca i32*, align 8
  store %struct.ds1685_priv* %0, %struct.ds1685_priv** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %6 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %5, i32 0, i32 0
  %7 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %6, align 8
  %8 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %9 = load i32, i32* @RTC_BANK1_SSN_MODEL, align 4
  %10 = call i32 %7(%struct.ds1685_priv* %8, i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %13, i32 0, i32 0
  %15 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %14, align 8
  %16 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %17 = load i32, i32* @RTC_BANK1_SSN_BYTE_1, align 4
  %18 = call i32 %15(%struct.ds1685_priv* %16, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %21, i32 0, i32 0
  %23 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %22, align 8
  %24 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %25 = load i32, i32* @RTC_BANK1_SSN_BYTE_2, align 4
  %26 = call i32 %23(%struct.ds1685_priv* %24, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %30 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %29, i32 0, i32 0
  %31 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %30, align 8
  %32 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %33 = load i32, i32* @RTC_BANK1_SSN_BYTE_3, align 4
  %34 = call i32 %31(%struct.ds1685_priv* %32, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %37, i32 0, i32 0
  %39 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %38, align 8
  %40 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %41 = load i32, i32* @RTC_BANK1_SSN_BYTE_4, align 4
  %42 = call i32 %39(%struct.ds1685_priv* %40, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %46 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %45, i32 0, i32 0
  %47 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %46, align 8
  %48 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %49 = load i32, i32* @RTC_BANK1_SSN_BYTE_5, align 4
  %50 = call i32 %47(%struct.ds1685_priv* %48, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %53, i32 0, i32 0
  %55 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %54, align 8
  %56 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %57 = load i32, i32* @RTC_BANK1_SSN_BYTE_6, align 4
  %58 = call i32 %55(%struct.ds1685_priv* %56, i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %62 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %61, i32 0, i32 0
  %63 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %62, align 8
  %64 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %65 = load i32, i32* @RTC_BANK1_SSN_CRC, align 4
  %66 = call i32 %63(%struct.ds1685_priv* %64, i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 7
  store i32 %66, i32* %68, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
