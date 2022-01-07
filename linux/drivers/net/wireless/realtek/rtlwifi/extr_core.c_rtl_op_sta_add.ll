; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_sta_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32*, i32, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.rtl_priv = type { %struct.TYPE_10__*, %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.rtl_hal = type { i64 }
%struct.rtl_mac = type { i64 }
%struct.rtl_sta_info = type { i32, i8*, i32 }

@BAND_ON_2_4G = common dso_local global i64 0, align 8
@WIRELESS_MODE_G = common dso_local global i8* null, align 8
@WIRELESS_MODE_B = common dso_local global i8* null, align 8
@WIRELESS_MODE_N_24G = common dso_local global i8* null, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@WIRELESS_MODE_A = common dso_local global i8* null, align 8
@WIRELESS_MODE_N_5G = common dso_local global i8* null, align 8
@WIRELESS_MODE_AC_5G = common dso_local global i8* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@COMP_MAC80211 = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Add sta addr is %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @rtl_op_sta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_op_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca %struct.rtl_mac*, align 8
  %10 = alloca %struct.rtl_sta_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %8, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %17)
  store %struct.rtl_mac* %18, %struct.rtl_mac** %9, align 8
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %20 = icmp ne %struct.ieee80211_sta* %19, null
  br i1 %20, label %21, label %158

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %25, %struct.rtl_sta_info** %10, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %10, align 8
  %31 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %30, i32 0, i32 2
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 2
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_bh(i32* %37)
  %39 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %40 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BAND_ON_2_4G, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %21
  %45 = load i8*, i8** @WIRELESS_MODE_G, align 8
  %46 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %10, align 8
  %47 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %52, 15
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i8*, i8** @WIRELESS_MODE_B, align 8
  %56 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %10, align 8
  %57 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %44
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i8*, i8** @WIRELESS_MODE_N_24G, align 8
  %66 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %10, align 8
  %67 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i8*, i8** @WIRELESS_MODE_G, align 8
  %76 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %10, align 8
  %77 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %68
  br label %120

79:                                               ; preds = %21
  %80 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %81 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @BAND_ON_5G, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %119

85:                                               ; preds = %79
  %86 = load i8*, i8** @WIRELESS_MODE_A, align 8
  %87 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %10, align 8
  %88 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %90 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load i8*, i8** @WIRELESS_MODE_N_5G, align 8
  %96 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %10, align 8
  %97 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %85
  %99 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %100 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i8*, i8** @WIRELESS_MODE_AC_5G, align 8
  %106 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %10, align 8
  %107 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %98
  %109 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %110 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i8*, i8** @WIRELESS_MODE_A, align 8
  %116 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %10, align 8
  %117 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %114, %108
  br label %119

119:                                              ; preds = %118, %79
  br label %120

120:                                              ; preds = %119, %78
  %121 = load %struct.rtl_mac*, %struct.rtl_mac** %9, align 8
  %122 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %127 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, -16
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %125, %120
  %133 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %10, align 8
  %134 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %137 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ETH_ALEN, align 4
  %140 = call i32 @memcpy(i32 %135, i32 %138, i32 %139)
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %142 = load i32, i32* @COMP_MAC80211, align 4
  %143 = load i32, i32* @DBG_DMESG, align 4
  %144 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %145 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @RT_TRACE(%struct.rtl_priv* %141, i32 %142, i32 %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %149 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)** %153, align 8
  %155 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %156 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %157 = call i32 %154(%struct.ieee80211_hw* %155, %struct.ieee80211_sta* %156, i32 0, i32 1)
  br label %158

158:                                              ; preds = %132, %3
  ret i32 0
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
