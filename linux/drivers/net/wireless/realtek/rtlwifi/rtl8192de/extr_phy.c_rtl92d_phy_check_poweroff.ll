; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_check_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_check_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64, i64 }

@SINGLEMAC_SINGLEPHY = common dso_local global i64 0, align 8
@REG_MAC0 = common dso_local global i32 0, align 4
@MAC0_ON = common dso_local global i32 0, align 4
@globalmutex_power = common dso_local global i32 0, align 4
@REG_MAC1 = common dso_local global i32 0, align 4
@MAC1_ON = common dso_local global i32 0, align 4
@REG_POWER_OFF_IN_PROCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92d_phy_check_poweroff(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %5, align 8
  %13 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %14 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SINGLEMAC_SINGLEPHY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %20 = load i32, i32* @REG_MAC0, align 4
  %21 = call i32 @rtl_read_byte(%struct.rtl_priv* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %23 = load i32, i32* @REG_MAC0, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MAC0_ON, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @rtl_write_byte(%struct.rtl_priv* %22, i32 %23, i32 %27)
  store i32 1, i32* %2, align 4
  br label %89

29:                                               ; preds = %1
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* @globalmutex_power, i64 %30)
  %32 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %33 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %38 = load i32, i32* @REG_MAC0, align 4
  %39 = call i32 @rtl_read_byte(%struct.rtl_priv* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %41 = load i32, i32* @REG_MAC0, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MAC0_ON, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = call i32 @rtl_write_byte(%struct.rtl_priv* %40, i32 %41, i32 %45)
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %48 = load i32, i32* @REG_MAC1, align 4
  %49 = call i32 @rtl_read_byte(%struct.rtl_priv* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @MAC1_ON, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %70

53:                                               ; preds = %29
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %55 = load i32, i32* @REG_MAC1, align 4
  %56 = call i32 @rtl_read_byte(%struct.rtl_priv* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %58 = load i32, i32* @REG_MAC1, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MAC1_ON, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = call i32 @rtl_write_byte(%struct.rtl_priv* %57, i32 %58, i32 %62)
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %65 = load i32, i32* @REG_MAC0, align 4
  %66 = call i32 @rtl_read_byte(%struct.rtl_priv* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @MAC0_ON, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %53, %36
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* @globalmutex_power, i64 %74)
  store i32 0, i32* %2, align 4
  br label %89

76:                                               ; preds = %70
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %78 = load i32, i32* @REG_POWER_OFF_IN_PROCESS, align 4
  %79 = call i32 @rtl_read_byte(%struct.rtl_priv* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = call i32 @BIT(i32 7)
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %84 = load i32, i32* @REG_POWER_OFF_IN_PROCESS, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @rtl_write_byte(%struct.rtl_priv* %83, i32 %84, i32 %85)
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* @globalmutex_power, i64 %87)
  store i32 1, i32* %2, align 4
  br label %89

89:                                               ; preds = %76, %73, %18
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
