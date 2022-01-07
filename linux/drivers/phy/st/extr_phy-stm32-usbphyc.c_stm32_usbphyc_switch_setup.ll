; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stm32-usbphyc.c_stm32_usbphyc_switch_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stm32-usbphyc.c_stm32_usbphyc_switch_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_usbphyc = type { i64, i64 }

@STM32_USBPHYC_MISC = common dso_local global i64 0, align 8
@SWITHOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_usbphyc*, i64)* @stm32_usbphyc_switch_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_usbphyc_switch_setup(%struct.stm32_usbphyc* %0, i64 %1) #0 {
  %3 = alloca %struct.stm32_usbphyc*, align 8
  %4 = alloca i64, align 8
  store %struct.stm32_usbphyc* %0, %struct.stm32_usbphyc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_usbphyc, %struct.stm32_usbphyc* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @STM32_USBPHYC_MISC, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* @SWITHOST, align 4
  %14 = call i32 @stm32_usbphyc_clr_bits(i64 %12, i32 %13)
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %3, align 8
  %17 = getelementptr inbounds %struct.stm32_usbphyc, %struct.stm32_usbphyc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @STM32_USBPHYC_MISC, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* @SWITHOST, align 4
  %22 = call i32 @stm32_usbphyc_set_bits(i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %7
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %3, align 8
  %26 = getelementptr inbounds %struct.stm32_usbphyc, %struct.stm32_usbphyc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  ret void
}

declare dso_local i32 @stm32_usbphyc_clr_bits(i64, i32) #1

declare dso_local i32 @stm32_usbphyc_set_bits(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
