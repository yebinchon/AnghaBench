; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_scratch_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_scratch_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_rtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)* }

@OMAP_RTC_SCRATCH0_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @omap_rtc_scratch_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rtc_scratch_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
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
  %16 = load %struct.omap_rtc*, %struct.omap_rtc** %9, align 8
  %17 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %19, align 8
  %21 = load %struct.omap_rtc*, %struct.omap_rtc** %9, align 8
  %22 = call i32 %20(%struct.omap_rtc* %21)
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %45, %4
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %8, align 8
  %27 = udiv i64 %26, 4
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.omap_rtc*, %struct.omap_rtc** %9, align 8
  %31 = load i64, i64* @OMAP_RTC_SCRATCH0_REG, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rtc_writel(%struct.omap_rtc* %30, i64 %38, i32 %43)
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %23

48:                                               ; preds = %23
  %49 = load %struct.omap_rtc*, %struct.omap_rtc** %9, align 8
  %50 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %52, align 8
  %54 = load %struct.omap_rtc*, %struct.omap_rtc** %9, align 8
  %55 = call i32 %53(%struct.omap_rtc* %54)
  ret i32 0
}

declare dso_local i32 @rtc_writel(%struct.omap_rtc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
