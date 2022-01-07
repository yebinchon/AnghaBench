; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_ctrl_set_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_ctrl_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_rtc = type { i32 }

@JZ_REG_RTC_CTRL = common dso_local global i32 0, align 4
@JZ_RTC_CTRL_1HZ = common dso_local global i32 0, align 4
@JZ_RTC_CTRL_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4740_rtc*, i32, i32)* @jz4740_rtc_ctrl_set_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_rtc_ctrl_set_bits(%struct.jz4740_rtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.jz4740_rtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.jz4740_rtc* %0, %struct.jz4740_rtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %4, align 8
  %11 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %10, i32 0, i32 0
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %4, align 8
  %15 = load i32, i32* @JZ_REG_RTC_CTRL, align 4
  %16 = call i32 @jz4740_rtc_reg_read(%struct.jz4740_rtc* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @JZ_RTC_CTRL_1HZ, align 4
  %18 = load i32, i32* @JZ_RTC_CTRL_AF, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %4, align 8
  %35 = load i32, i32* @JZ_REG_RTC_CTRL, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @jz4740_rtc_reg_write(%struct.jz4740_rtc* %34, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %4, align 8
  %39 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @jz4740_rtc_reg_read(%struct.jz4740_rtc*, i32) #1

declare dso_local i32 @jz4740_rtc_reg_write(%struct.jz4740_rtc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
