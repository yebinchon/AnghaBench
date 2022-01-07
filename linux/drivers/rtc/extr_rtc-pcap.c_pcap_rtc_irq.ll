; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcap.c_pcap_rtc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcap.c_pcap_rtc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_rtc = type { i32, i32 }

@PCAP_IRQ_1HZ = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_UF = common dso_local global i64 0, align 8
@PCAP_IRQ_TODA = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcap_rtc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_rtc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcap_rtc*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pcap_rtc*
  store %struct.pcap_rtc* %8, %struct.pcap_rtc** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.pcap_rtc*, %struct.pcap_rtc** %5, align 8
  %11 = getelementptr inbounds %struct.pcap_rtc, %struct.pcap_rtc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCAP_IRQ_1HZ, align 4
  %14 = call i32 @pcap_to_irq(i32 %12, i32 %13)
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i64, i64* @RTC_IRQF, align 8
  %18 = load i64, i64* @RTC_UF, align 8
  %19 = or i64 %17, %18
  store i64 %19, i64* %6, align 8
  br label %34

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.pcap_rtc*, %struct.pcap_rtc** %5, align 8
  %23 = getelementptr inbounds %struct.pcap_rtc, %struct.pcap_rtc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCAP_IRQ_TODA, align 4
  %26 = call i32 @pcap_to_irq(i32 %24, i32 %25)
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i64, i64* @RTC_IRQF, align 8
  %30 = load i64, i64* @RTC_AF, align 8
  %31 = or i64 %29, %30
  store i64 %31, i64* %6, align 8
  br label %33

32:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  br label %33

33:                                               ; preds = %32, %28
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.pcap_rtc*, %struct.pcap_rtc** %5, align 8
  %36 = getelementptr inbounds %struct.pcap_rtc, %struct.pcap_rtc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @rtc_update_irq(i32 %37, i32 1, i64 %38)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %40
}

declare dso_local i32 @pcap_to_irq(i32, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
