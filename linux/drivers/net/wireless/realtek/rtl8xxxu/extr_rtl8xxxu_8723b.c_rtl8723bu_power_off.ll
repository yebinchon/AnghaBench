; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723bu_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723bu_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_TX_REPORT_CTRL = common dso_local global i64 0, align 8
@TX_REPORT_CTRL_TIMER_ENABLE = common dso_local global i32 0, align 4
@REG_CR = common dso_local global i64 0, align 8
@REG_MCU_FW_DL = common dso_local global i64 0, align 8
@MCU_FW_RAM_SEL = common dso_local global i32 0, align 4
@REG_SYS_FUNC = common dso_local global i32 0, align 4
@SYS_FUNC_CPU_ENABLE = common dso_local global i32 0, align 4
@REG_APS_FSMCO = common dso_local global i64 0, align 8
@REG_GPIO_INTM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*)* @rtl8723bu_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723bu_power_off(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %5 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %6 = call i32 @rtl8xxxu_flush_fifo(%struct.rtl8xxxu_priv* %5)
  %7 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %8 = load i64, i64* @REG_TX_REPORT_CTRL, align 8
  %9 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %7, i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @TX_REPORT_CTRL_TIMER_ENABLE, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %15 = load i64, i64* @REG_TX_REPORT_CTRL, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %14, i64 %15, i32 %16)
  %18 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %19 = load i64, i64* @REG_CR, align 8
  %20 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %18, i64 %19, i32 0)
  %21 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %22 = call i32 @rtl8xxxu_active_to_lps(%struct.rtl8xxxu_priv* %21)
  %23 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %24 = load i64, i64* @REG_MCU_FW_DL, align 8
  %25 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %23, i64 %24)
  %26 = load i32, i32* @MCU_FW_RAM_SEL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %31 = call i32 @rtl8xxxu_firmware_self_reset(%struct.rtl8xxxu_priv* %30)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %34 = load i32, i32* @REG_SYS_FUNC, align 4
  %35 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @SYS_FUNC_CPU_ENABLE, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %41 = load i32, i32* @REG_SYS_FUNC, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %40, i32 %41, i32 %42)
  %44 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %45 = load i64, i64* @REG_MCU_FW_DL, align 8
  %46 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %44, i64 %45, i32 0)
  %47 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %48 = call i32 @rtl8723bu_active_to_emu(%struct.rtl8xxxu_priv* %47)
  %49 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %50 = load i64, i64* @REG_APS_FSMCO, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %49, i64 %51)
  store i32 %52, i32* %3, align 4
  %53 = call i32 @BIT(i32 3)
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %57 = load i64, i64* @REG_APS_FSMCO, align 8
  %58 = add nsw i64 %57, 1
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %56, i64 %58, i32 %59)
  %61 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %62 = load i64, i64* @REG_GPIO_INTM, align 8
  %63 = add nsw i64 %62, 2
  %64 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %61, i64 %63)
  store i32 %64, i32* %3, align 4
  %65 = call i32 @BIT(i32 0)
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  %68 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %69 = load i64, i64* @REG_GPIO_INTM, align 8
  %70 = add nsw i64 %69, 2
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %68, i64 %70, i32 %71)
  ret void
}

declare dso_local i32 @rtl8xxxu_flush_fifo(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv*, i64) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i64, i32) #1

declare dso_local i32 @rtl8xxxu_active_to_lps(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @rtl8xxxu_firmware_self_reset(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8723bu_active_to_emu(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
