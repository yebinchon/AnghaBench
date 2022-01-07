; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c6410_rtc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c6410_rtc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_rtc = type { i64, i32 }

@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@S3C2410_INTP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_rtc*, i32)* @s3c6410_rtc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c6410_rtc_irq(%struct.s3c_rtc* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c_rtc*, align 8
  %4 = alloca i32, align 4
  store %struct.s3c_rtc* %0, %struct.s3c_rtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.s3c_rtc*, %struct.s3c_rtc** %3, align 8
  %6 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RTC_AF, align 4
  %9 = load i32, i32* @RTC_IRQF, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @rtc_update_irq(i32 %7, i32 1, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.s3c_rtc*, %struct.s3c_rtc** %3, align 8
  %14 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @S3C2410_INTP, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writeb(i32 %12, i64 %17)
  ret void
}

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
