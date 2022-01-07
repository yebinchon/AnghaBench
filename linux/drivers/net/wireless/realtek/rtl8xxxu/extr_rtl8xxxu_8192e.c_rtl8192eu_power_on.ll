; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8192e.c_rtl8192eu_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8192e.c_rtl8192eu_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_SYS_CFG = common dso_local global i32 0, align 4
@SYS_CFG_SPS_LDO_SEL = common dso_local global i32 0, align 4
@REG_LDO_SW_CTRL = common dso_local global i32 0, align 4
@REG_8192E_LDOV12_CTRL = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8192eu_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8192eu_power_on(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %7 = load i32, i32* @REG_SYS_CFG, align 4
  %8 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SYS_CFG_SPS_LDO_SEL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %15 = load i32, i32* @REG_LDO_SW_CTRL, align 4
  %16 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %14, i32 %15, i32 195)
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %19 = load i32, i32* @REG_8192E_LDOV12_CTRL, align 4
  %20 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, -15728641
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, 5242880
  store i32 %24, i32* %4, align 4
  %25 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %26 = load i32, i32* @REG_8192E_LDOV12_CTRL, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %25, i32 %26, i32 %27)
  %29 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %30 = load i32, i32* @REG_LDO_SW_CTRL, align 4
  %31 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %29, i32 %30, i32 131)
  br label %32

32:                                               ; preds = %17, %13
  %33 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %34 = call i32 @rtl8192e_crystal_afe_adjust(%struct.rtl8xxxu_priv* %33)
  %35 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %36 = call i32 @rtl8192e_disabled_to_emu(%struct.rtl8xxxu_priv* %35)
  %37 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %38 = call i32 @rtl8192e_emu_to_active(%struct.rtl8xxxu_priv* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %74

42:                                               ; preds = %32
  %43 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %44 = load i32, i32* @REG_CR, align 4
  %45 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %43, i32 %44, i32 0)
  %46 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %47 = load i32, i32* @REG_CR, align 4
  %48 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @CR_HCI_TXDMA_ENABLE, align 4
  %50 = load i32, i32* @CR_HCI_RXDMA_ENABLE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @CR_TXDMA_ENABLE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CR_RXDMA_ENABLE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CR_PROTOCOL_ENABLE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CR_SCHEDULE_ENABLE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CR_MAC_TX_ENABLE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CR_MAC_RX_ENABLE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CR_SECURITY_ENABLE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @CR_CALTIMER_ENABLE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %71 = load i32, i32* @REG_CR, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %42, %41
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8192e_crystal_afe_adjust(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @rtl8192e_disabled_to_emu(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @rtl8192e_emu_to_active(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
