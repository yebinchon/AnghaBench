; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723a.c_rtl8723au_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723a.c_rtl8723au_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_RSV_CTRL = common dso_local global i64 0, align 8
@REG_APS_FSMCO = common dso_local global i64 0, align 8
@REG_CR = common dso_local global i32 0, align 4
@CR_HCI_TXDMA_ENABLE = common dso_local global i32 0, align 4
@CR_HCI_RXDMA_ENABLE = common dso_local global i32 0, align 4
@CR_TXDMA_ENABLE = common dso_local global i32 0, align 4
@CR_RXDMA_ENABLE = common dso_local global i32 0, align 4
@CR_PROTOCOL_ENABLE = common dso_local global i32 0, align 4
@CR_SCHEDULE_ENABLE = common dso_local global i32 0, align 4
@CR_MAC_TX_ENABLE = common dso_local global i32 0, align 4
@CR_MAC_RX_ENABLE = common dso_local global i32 0, align 4
@CR_SECURITY_ENABLE = common dso_local global i32 0, align 4
@CR_CALTIMER_ENABLE = common dso_local global i32 0, align 4
@REG_EFUSE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8723au_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8723au_power_on(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %7 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %8 = load i64, i64* @REG_RSV_CTRL, align 8
  %9 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %7, i64 %8, i32 0)
  %10 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %11 = call i32 @rtl8xxxu_disabled_to_emu(%struct.rtl8xxxu_priv* %10)
  %12 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %13 = call i32 @rtl8723a_emu_to_active(%struct.rtl8xxxu_priv* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %75

17:                                               ; preds = %1
  %18 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %19 = load i64, i64* @REG_APS_FSMCO, align 8
  %20 = add nsw i64 %19, 2
  %21 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %18, i64 %20)
  store i32 %21, i32* %3, align 4
  %22 = call i32 @BIT(i32 3)
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %26 = load i64, i64* @REG_APS_FSMCO, align 8
  %27 = add nsw i64 %26, 2
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %25, i64 %27, i32 %28)
  %30 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %31 = load i32, i32* @REG_CR, align 4
  %32 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @CR_HCI_TXDMA_ENABLE, align 4
  %34 = load i32, i32* @CR_HCI_RXDMA_ENABLE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CR_TXDMA_ENABLE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CR_RXDMA_ENABLE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CR_PROTOCOL_ENABLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CR_SCHEDULE_ENABLE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @CR_MAC_TX_ENABLE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CR_MAC_RX_ENABLE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CR_SECURITY_ENABLE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CR_CALTIMER_ENABLE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %55 = load i32, i32* @REG_CR, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %54, i32 %55, i32 %56)
  %58 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %59 = load i32, i32* @REG_EFUSE_CTRL, align 4
  %60 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = call i32 @BIT(i32 28)
  %62 = call i32 @BIT(i32 29)
  %63 = or i32 %61, %62
  %64 = call i32 @BIT(i32 30)
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, 1610612736
  store i32 %70, i32* %5, align 4
  %71 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %72 = load i32, i32* @REG_EFUSE_CTRL, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %17, %16
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i64, i32) #1

declare dso_local i32 @rtl8xxxu_disabled_to_emu(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @rtl8723a_emu_to_active(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
