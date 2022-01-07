; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.ieee80211_vif = type { i64, i32 }
%struct.ieee80211_bss_conf = type { i64, i32, i32, i32* }
%struct.rtl8187_vif = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@RTL818X_MSR_ENEDCA = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@RTL818X_MSR_ADHOC = common dso_local global i32 0, align 4
@RTL818X_MSR_INFRA = common dso_local global i32 0, align 4
@RTL818X_MSR_NO_LINK = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @rtl8187_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl8187_priv*, align 8
  %10 = alloca %struct.rtl8187_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %14, align 8
  store %struct.rtl8187_priv* %15, %struct.rtl8187_priv** %9, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 1
  %18 = bitcast i32* %17 to %struct.rtl8187_vif*
  store %struct.rtl8187_vif* %18, %struct.rtl8187_vif** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %96

23:                                               ; preds = %4
  %24 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %25 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %49, %23
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %33 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %34 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %32, i32* %40, i32 %47)
  br label %49

49:                                               ; preds = %31
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %27

52:                                               ; preds = %27
  %53 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %54 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @RTL818X_MSR_ENEDCA, align 4
  store i32 %58, i32* %12, align 4
  br label %60

59:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %59, %57
  %61 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @is_valid_ether_addr(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* @RTL818X_MSR_ADHOC, align 4
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %12, align 4
  br label %80

76:                                               ; preds = %66
  %77 = load i32, i32* @RTL818X_MSR_INFRA, align 4
  %78 = load i32, i32* %12, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %76, %72
  br label %85

81:                                               ; preds = %60
  %82 = load i32, i32* @RTL818X_MSR_NO_LINK, align 4
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %81, %80
  %86 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %87 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %88 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %86, i32* %90, i32 %91)
  %93 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %94 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  br label %96

96:                                               ; preds = %85, %4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %99 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %105 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %106 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %109 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @rtl8187_conf_erp(%struct.rtl8187_priv* %104, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %103, %96
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.rtl8187_vif*, %struct.rtl8187_vif** %10, align 8
  %122 = getelementptr inbounds %struct.rtl8187_vif, %struct.rtl8187_vif* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %117, %112
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %126 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %123
  %131 = load %struct.rtl8187_vif*, %struct.rtl8187_vif** %10, align 8
  %132 = getelementptr inbounds %struct.rtl8187_vif, %struct.rtl8187_vif* %131, i32 0, i32 0
  %133 = call i32 @cancel_delayed_work_sync(%struct.TYPE_4__* %132)
  %134 = load %struct.rtl8187_vif*, %struct.rtl8187_vif** %10, align 8
  %135 = getelementptr inbounds %struct.rtl8187_vif, %struct.rtl8187_vif* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %130
  %139 = load %struct.rtl8187_vif*, %struct.rtl8187_vif** %10, align 8
  %140 = getelementptr inbounds %struct.rtl8187_vif, %struct.rtl8187_vif* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = call i32 @schedule_work(i32* %141)
  br label %143

143:                                              ; preds = %138, %130
  br label %144

144:                                              ; preds = %143, %123
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rtl8187_conf_erp(%struct.rtl8187_priv*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
