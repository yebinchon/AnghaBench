; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_set_resolution_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_set_resolution_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad2s1210_state = type { i32, i32* }

@AD2S1210_RES0 = common dso_local global i64 0, align 8
@ad2s1210_res_pins = common dso_local global i32** null, align 8
@AD2S1210_RES1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad2s1210_state*)* @ad2s1210_set_resolution_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad2s1210_set_resolution_pin(%struct.ad2s1210_state* %0) #0 {
  %2 = alloca %struct.ad2s1210_state*, align 8
  store %struct.ad2s1210_state* %0, %struct.ad2s1210_state** %2, align 8
  %3 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %4 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @AD2S1210_RES0, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = load i32**, i32*** @ad2s1210_res_pins, align 8
  %10 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %11 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 10
  %14 = sdiv i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %9, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpiod_set_value(i32 %8, i32 %19)
  %21 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %22 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @AD2S1210_RES1, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32**, i32*** @ad2s1210_res_pins, align 8
  %28 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %29 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 10
  %32 = sdiv i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %27, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gpiod_set_value(i32 %26, i32 %37)
  ret void
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
