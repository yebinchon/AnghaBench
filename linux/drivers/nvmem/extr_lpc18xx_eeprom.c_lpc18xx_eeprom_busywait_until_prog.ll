; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_lpc18xx_eeprom.c_lpc18xx_eeprom_busywait_until_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_lpc18xx_eeprom.c_lpc18xx_eeprom_busywait_until_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc18xx_eeprom_dev = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@LPC18XX_EEPROM_PROGRAM_TIME = common dso_local global i32 0, align 4
@LPC18XX_EEPROM_INTSTAT = common dso_local global i32 0, align 4
@LPC18XX_EEPROM_INTSTAT_END_OF_PROG = common dso_local global i32 0, align 4
@LPC18XX_EEPROM_INTSTATCLR = common dso_local global i32 0, align 4
@LPC18XX_EEPROM_INTSTATCLR_PROG_CLR_ST = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpc18xx_eeprom_dev*)* @lpc18xx_eeprom_busywait_until_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_eeprom_busywait_until_prog(%struct.lpc18xx_eeprom_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpc18xx_eeprom_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lpc18xx_eeprom_dev* %0, %struct.lpc18xx_eeprom_dev** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i32, i32* @LPC18XX_EEPROM_PROGRAM_TIME, align 4
  %8 = mul nsw i32 %7, 10
  %9 = call i64 @msecs_to_jiffies(i32 %8)
  %10 = add i64 %6, %9
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @time_is_after_jiffies(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %3, align 8
  %17 = load i32, i32* @LPC18XX_EEPROM_INTSTAT, align 4
  %18 = call i32 @lpc18xx_eeprom_readl(%struct.lpc18xx_eeprom_dev* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @LPC18XX_EEPROM_INTSTAT_END_OF_PROG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %3, align 8
  %25 = load i32, i32* @LPC18XX_EEPROM_INTSTATCLR, align 4
  %26 = load i32, i32* @LPC18XX_EEPROM_INTSTATCLR_PROG_CLR_ST, align 4
  %27 = call i32 @lpc18xx_eeprom_writel(%struct.lpc18xx_eeprom_dev* %24, i32 %25, i32 %26)
  store i32 0, i32* %2, align 4
  br label %40

28:                                               ; preds = %15
  %29 = load i32, i32* @LPC18XX_EEPROM_PROGRAM_TIME, align 4
  %30 = load i32, i32* @USEC_PER_MSEC, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* @LPC18XX_EEPROM_PROGRAM_TIME, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* @USEC_PER_MSEC, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call i32 @usleep_range(i32 %31, i32 %35)
  br label %11

37:                                               ; preds = %11
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %23
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @lpc18xx_eeprom_readl(%struct.lpc18xx_eeprom_dev*, i32) #1

declare dso_local i32 @lpc18xx_eeprom_writel(%struct.lpc18xx_eeprom_dev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
