; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_tickirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_tickirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_rtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.s3c_rtc*, i32)* }

@S3C2410_INTP_TIC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c_rtc_tickirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_rtc_tickirq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s3c_rtc*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.s3c_rtc*
  store %struct.s3c_rtc* %7, %struct.s3c_rtc** %5, align 8
  %8 = load %struct.s3c_rtc*, %struct.s3c_rtc** %5, align 8
  %9 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.s3c_rtc*, i32)*, i32 (%struct.s3c_rtc*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.s3c_rtc*, i32)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.s3c_rtc*, %struct.s3c_rtc** %5, align 8
  %16 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.s3c_rtc*, i32)*, i32 (%struct.s3c_rtc*, i32)** %18, align 8
  %20 = load %struct.s3c_rtc*, %struct.s3c_rtc** %5, align 8
  %21 = load i32, i32* @S3C2410_INTP_TIC, align 4
  %22 = call i32 %19(%struct.s3c_rtc* %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %2
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
