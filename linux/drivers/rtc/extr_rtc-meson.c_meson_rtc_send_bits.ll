; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-meson.c_meson_rtc_send_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-meson.c_meson_rtc_send_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_rtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_rtc*, i32, i32)* @meson_rtc_send_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_rtc_send_bits(%struct.meson_rtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.meson_rtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.meson_rtc* %0, %struct.meson_rtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sub i32 %8, 1
  %10 = shl i32 1, %9
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %14, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.meson_rtc*, %struct.meson_rtc** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @meson_rtc_send_bit(%struct.meson_rtc* %15, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %11

22:                                               ; preds = %11
  ret void
}

declare dso_local i32 @meson_rtc_send_bit(%struct.meson_rtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
