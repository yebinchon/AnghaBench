; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_scratch_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_scratch_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_rtc = type { i32 }

@OMAP_RTC_SCRATCH0_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @omap_rtc_scratch_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rtc_scratch_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.omap_rtc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.omap_rtc*
  store %struct.omap_rtc* %13, %struct.omap_rtc** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %37, %4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %8, align 8
  %20 = udiv i64 %19, 4
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.omap_rtc*, %struct.omap_rtc** %9, align 8
  %24 = load i64, i64* @OMAP_RTC_SCRATCH0_REG, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i32, i32* %11, align 4
  %29 = mul nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = call i32 @rtc_readl(%struct.omap_rtc* %23, i64 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %16

40:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @rtc_readl(%struct.omap_rtc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
