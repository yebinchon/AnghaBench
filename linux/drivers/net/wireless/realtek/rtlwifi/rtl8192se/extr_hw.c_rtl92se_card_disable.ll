; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_card_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_card_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ieee80211_hw*, i32)* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*)* }
%struct.rtl_mac = type { i32 }
%struct.rtl_pci = type { i64 }
%struct.rtl_ps_ctl = type { i64 }

@RF_CHANGE_BY_PS = common dso_local global i64 0, align 8
@LED_CTL_POWER_OFF = common dso_local global i32 0, align 4
@MAC80211_NOLINK = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92se_card_disable(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca %struct.rtl_pci*, align 8
  %6 = alloca %struct.rtl_ps_ctl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %12)
  store %struct.rtl_mac* %13, %struct.rtl_mac** %4, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_pci* @rtl_pcidev(i32 %15)
  store %struct.rtl_pci* %16, %struct.rtl_pci** %5, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %18)
  store %struct.rtl_ps_ctl* %19, %struct.rtl_ps_ctl** %6, align 8
  store i32 30, i32* %8, align 4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %23, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %26 = call i32 %24(%struct.ieee80211_hw* %25)
  %27 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %28 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %1
  %32 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %6, align 8
  %33 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RF_CHANGE_BY_PS, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31, %1
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %43, align 8
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %46 = load i32, i32* @LED_CTL_POWER_OFF, align 4
  %47 = call i32 %44(%struct.ieee80211_hw* %45, i32 %46)
  br label %48

48:                                               ; preds = %37, %31
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %50 = call i32 @rtl8192se_gpiobit3_cfg_inputmode(%struct.ieee80211_hw* %49)
  br label %51

51:                                               ; preds = %72, %48
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %8, align 4
  %54 = icmp sge i32 %52, 10
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %55, %51
  %62 = phi i1 [ false, %51 ], [ %60, %55 ]
  br i1 %62, label %63, label %73

63:                                               ; preds = %61
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @mdelay(i32 20)
  br label %72

71:                                               ; preds = %63
  br label %73

72:                                               ; preds = %69
  br label %51

73:                                               ; preds = %71, %61
  %74 = load i32, i32* @MAC80211_NOLINK, align 4
  %75 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %76 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  store i32 %77, i32* %7, align 4
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @_rtl92se_set_media_status(%struct.ieee80211_hw* %78, i32 %79)
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %82 = call i32 @_rtl92s_phy_set_rfhalt(%struct.ieee80211_hw* %81)
  %83 = call i32 @udelay(i32 100)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8192se_gpiobit3_cfg_inputmode(%struct.ieee80211_hw*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @_rtl92se_set_media_status(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl92s_phy_set_rfhalt(%struct.ieee80211_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
