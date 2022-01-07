; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_gpio_radio_on_off_checking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_gpio_radio_on_off_checking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_ps_ctl = type { i32, i32, i32, i64 }
%struct.rtl_pci = type { i32, i64 }

@RT_RF_OFF_LEVL_HALT_NIC = common dso_local global i32 0, align 4
@ERFON = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"RFKILL-HW Radio ON, RF ON\0A\00", align 1
@ERFOFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"RFKILL-HW Radio OFF, RF OFF\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92se_gpio_radio_on_off_checking(%struct.ieee80211_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_ps_ctl*, align 8
  %8 = alloca %struct.rtl_pci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %16)
  store %struct.rtl_ps_ctl* %17, %struct.rtl_ps_ctl** %7, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_pci* @rtl_pcidev(i32 %19)
  store %struct.rtl_pci* %20, %struct.rtl_pci** %8, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %22 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %27 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %2
  store i32 0, i32* %3, align 4
  br label %159

31:                                               ; preds = %25
  %32 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %33 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %159

37:                                               ; preds = %31
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %44 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  store i32 0, i32* %3, align 4
  br label %159

53:                                               ; preds = %37
  %54 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %55 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %53
  %62 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %63 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %64 = call i64 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %68 = call i32 @_rtl92se_power_domain_init(%struct.ieee80211_hw* %67)
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %71 = call i32 @_rtl92se_rf_onoff_detect(%struct.ieee80211_hw* %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %73 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @ERFON, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %82 = load i32, i32* @COMP_RF, align 4
  %83 = load i32, i32* @DBG_DMESG, align 4
  %84 = call i32 @RT_TRACE(%struct.rtl_priv* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @ERFON, align 4
  store i32 %85, i32* %9, align 4
  %86 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %87 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  store i32 1, i32* %11, align 4
  br label %106

88:                                               ; preds = %76, %69
  %89 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %90 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @ERFOFF, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %99 = load i32, i32* @COMP_RF, align 4
  %100 = load i32, i32* @DBG_DMESG, align 4
  %101 = call i32 @RT_TRACE(%struct.rtl_priv* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @ERFOFF, align 4
  store i32 %102, i32* %9, align 4
  %103 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %104 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  store i32 1, i32* %11, align 4
  br label %105

105:                                              ; preds = %97, %93, %88
  br label %106

106:                                              ; preds = %105, %80
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %111 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @spin_lock_irqsave(i32* %112, i64 %113)
  %115 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %116 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %118 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  br label %151

122:                                              ; preds = %106
  %123 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %124 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %134 = call i32 @_rtl92s_phy_set_rfhalt(%struct.ieee80211_hw* %133)
  %135 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %136 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %137 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %129, %122
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %140 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %10, align 8
  %143 = call i32 @spin_lock_irqsave(i32* %141, i64 %142)
  %144 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %145 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %147 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i64, i64* %10, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  br label %151

151:                                              ; preds = %138, %109
  %152 = load i32*, i32** %5, align 8
  store i32 1, i32* %152, align 4
  %153 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %154 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %151, %47, %36, %30
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @_rtl92se_power_domain_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92se_rf_onoff_detect(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @_rtl92s_phy_set_rfhalt(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
