; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_rtc_delayed_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_rtc_delayed_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada38x_rtc = type { i64 }

@RTC_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.armada38x_rtc*, i32)* @rtc_delayed_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_delayed_write(i32 %0, %struct.armada38x_rtc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.armada38x_rtc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.armada38x_rtc* %1, %struct.armada38x_rtc** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %8 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RTC_STATUS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 0, i64 %11)
  %13 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %14 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RTC_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 0, i64 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @writel(i32 %19, i64 %25)
  %27 = call i32 @udelay(i32 5)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
