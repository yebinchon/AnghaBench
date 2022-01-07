; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rc5t583.c_rc5t583_rtc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rc5t583.c_rc5t583_rtc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device* }
%struct.rc5t583 = type { i32 }
%struct.rc5t583_rtc = type { i32 }

@RC5T583_RTC_CTL2 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@GET_YAL_STATUS = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_AF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rc5t583_rtc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_rtc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.rc5t583*, align 8
  %8 = alloca %struct.rc5t583_rtc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.device*
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  %17 = call i8* @dev_get_drvdata(%struct.device* %16)
  %18 = bitcast i8* %17 to %struct.rc5t583*
  store %struct.rc5t583* %18, %struct.rc5t583** %7, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i8* @dev_get_drvdata(%struct.device* %19)
  %21 = bitcast i8* %20 to %struct.rc5t583_rtc*
  store %struct.rc5t583_rtc* %21, %struct.rc5t583_rtc** %8, align 8
  store i64 0, i64* %9, align 8
  %22 = load %struct.rc5t583*, %struct.rc5t583** %7, align 8
  %23 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RC5T583_RTC_CTL2, align 4
  %26 = call i32 @regmap_read(i32 %24, i32 %25, i32* %11)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %62

31:                                               ; preds = %2
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @GET_YAL_STATUS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i64, i64* @RTC_IRQF, align 8
  %38 = load i64, i64* @RTC_AF, align 8
  %39 = or i64 %37, %38
  store i64 %39, i64* %9, align 8
  %40 = load i32, i32* @GET_YAL_STATUS, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.rc5t583*, %struct.rc5t583** %7, align 8
  %46 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RC5T583_RTC_CTL2, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @regmap_write(i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @IRQ_NONE, align 4
  store i32 %54, i32* %3, align 4
  br label %62

55:                                               ; preds = %44
  %56 = load %struct.rc5t583_rtc*, %struct.rc5t583_rtc** %8, align 8
  %57 = getelementptr inbounds %struct.rc5t583_rtc, %struct.rc5t583_rtc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @rtc_update_irq(i32 %58, i32 1, i64 %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %53, %29
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i8* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
