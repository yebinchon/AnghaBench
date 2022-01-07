; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_get_available_filter_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_get_available_filter_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7192_state = type { i32, i32 }

@AD7192_SYNC4_FILTER = common dso_local global i32 0, align 4
@AD7192_SYNC3_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad7192_state*, i32*)* @ad7192_get_available_filter_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7192_get_available_filter_freq(%struct.ad7192_state* %0, i32* %1) #0 {
  %3 = alloca %struct.ad7192_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ad7192_state* %0, %struct.ad7192_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ad7192_state*, %struct.ad7192_state** %3, align 8
  %7 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AD7192_SYNC4_FILTER, align 4
  %10 = load %struct.ad7192_state*, %struct.ad7192_state** %3, align 8
  %11 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @AD7192_MODE_RATE(i32 %12)
  %14 = mul nsw i32 %9, %13
  %15 = call i8* @DIV_ROUND_CLOSEST(i32 %8, i32 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul i32 %17, 240
  %19 = call i8* @DIV_ROUND_CLOSEST(i32 %18, i32 1024)
  %20 = ptrtoint i8* %19 to i32
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ad7192_state*, %struct.ad7192_state** %3, align 8
  %24 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AD7192_SYNC3_FILTER, align 4
  %27 = load %struct.ad7192_state*, %struct.ad7192_state** %3, align 8
  %28 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @AD7192_MODE_RATE(i32 %29)
  %31 = mul nsw i32 %26, %30
  %32 = call i8* @DIV_ROUND_CLOSEST(i32 %25, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul i32 %34, 240
  %36 = call i8* @DIV_ROUND_CLOSEST(i32 %35, i32 1024)
  %37 = ptrtoint i8* %36 to i32
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ad7192_state*, %struct.ad7192_state** %3, align 8
  %41 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ad7192_state*, %struct.ad7192_state** %3, align 8
  %44 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @AD7192_MODE_RATE(i32 %45)
  %47 = call i8* @DIV_ROUND_CLOSEST(i32 %42, i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = mul i32 %49, 230
  %51 = call i8* @DIV_ROUND_CLOSEST(i32 %50, i32 1024)
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = mul i32 %55, 272
  %57 = call i8* @DIV_ROUND_CLOSEST(i32 %56, i32 1024)
  %58 = ptrtoint i8* %57 to i32
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i8* @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @AD7192_MODE_RATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
