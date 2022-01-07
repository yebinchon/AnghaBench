; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_mask_rtc_irq_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_mask_rtc_irq_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_rtc = type { i8 }

@REG_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl_rtc*, i8)* @mask_rtc_irq_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mask_rtc_irq_bit(%struct.twl_rtc* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twl_rtc*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.twl_rtc* %0, %struct.twl_rtc** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %9 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %19 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %6, align 1
  %27 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %28 = load i8, i8* %6, align 1
  %29 = load i32, i32* @REG_RTC_INTERRUPTS_REG, align 4
  %30 = call i32 @twl_rtc_write_u8(%struct.twl_rtc* %27, i8 zeroext %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load i8, i8* %6, align 1
  %35 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %36 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %35, i32 0, i32 0
  store i8 %34, i8* %36, align 1
  br label %37

37:                                               ; preds = %33, %17
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @twl_rtc_write_u8(%struct.twl_rtc*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
