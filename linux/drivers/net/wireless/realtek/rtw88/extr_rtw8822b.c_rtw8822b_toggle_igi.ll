; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_toggle_igi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_toggle_igi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal }
%struct.rtw_hal = type { i32 }

@REG_RXIGI_A = common dso_local global i32 0, align 4
@REG_RXIGI_B = common dso_local global i32 0, align 4
@REG_RXPSEL = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822b_toggle_igi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_toggle_igi(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_hal*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 0
  store %struct.rtw_hal* %6, %struct.rtw_hal** %3, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = load i32, i32* @REG_RXIGI_A, align 4
  %9 = call i32 @rtw_read32_mask(%struct.rtw_dev* %7, i32 %8, i32 127)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = load i32, i32* @REG_RXIGI_A, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 2
  %14 = call i32 @rtw_write32_mask(%struct.rtw_dev* %10, i32 %11, i32 127, i32 %13)
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %16 = load i32, i32* @REG_RXIGI_A, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @rtw_write32_mask(%struct.rtw_dev* %15, i32 %16, i32 127, i32 %17)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %20 = load i32, i32* @REG_RXIGI_B, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 2
  %23 = call i32 @rtw_write32_mask(%struct.rtw_dev* %19, i32 %20, i32 127, i32 %22)
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %25 = load i32, i32* @REG_RXIGI_B, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @rtw_write32_mask(%struct.rtw_dev* %24, i32 %25, i32 127, i32 %26)
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %29 = load i32, i32* @REG_RXPSEL, align 4
  %30 = load i32, i32* @MASKBYTE0, align 4
  %31 = call i32 @rtw_write32_mask(%struct.rtw_dev* %28, i32 %29, i32 %30, i32 0)
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %33 = load i32, i32* @REG_RXPSEL, align 4
  %34 = load i32, i32* @MASKBYTE0, align 4
  %35 = load %struct.rtw_hal*, %struct.rtw_hal** %3, align 8
  %36 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rtw_hal*, %struct.rtw_hal** %3, align 8
  %39 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 4
  %42 = or i32 %37, %41
  %43 = call i32 @rtw_write32_mask(%struct.rtw_dev* %32, i32 %33, i32 %34, i32 %42)
  ret void
}

declare dso_local i32 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
