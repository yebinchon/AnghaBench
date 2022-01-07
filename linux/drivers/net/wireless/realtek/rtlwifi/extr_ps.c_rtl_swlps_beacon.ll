; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_swlps_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_swlps_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.rtl_priv = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.rtl_mac = type { i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tim_ie = type { i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@MAC80211_LINKED = common dso_local global i64 0, align 8
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"u_bufferd: %x, m_buffered: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_swlps_beacon(%struct.ieee80211_hw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_mac*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.ieee80211_tim_ie*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %7, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %18)
  store %struct.rtl_mac* %19, %struct.rtl_mac** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %21, %struct.ieee80211_hdr** %9, align 8
  %22 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %23 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %173

28:                                               ; preds = %3
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %173

35:                                               ; preds = %28
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %37 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MAC80211_LINKED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %173

43:                                               ; preds = %35
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %173

50:                                               ; preds = %43
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %52 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %173

57:                                               ; preds = %50
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @likely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %173

70:                                               ; preds = %57
  %71 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %72 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ieee80211_is_beacon(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %173

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @FCS_LEN, align 4
  %80 = add nsw i32 40, %79
  %81 = icmp ule i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %173

83:                                               ; preds = %77
  %84 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %85 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %88 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ether_addr_equal_64bits(i32 %86, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %83
  br label %173

94:                                               ; preds = %83
  %95 = load i32, i32* @jiffies, align 4
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %97 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @FCS_LEN, align 4
  %102 = sub i32 %100, %101
  %103 = load i32, i32* @WLAN_EID_TIM, align 4
  %104 = call i32* @rtl_find_ie(i8* %99, i32 %102, i32 %103)
  store i32* %104, i32** %11, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %94
  br label %173

108:                                              ; preds = %94
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp ult i64 %112, 8
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %173

115:                                              ; preds = %108
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %12, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = bitcast i32* %120 to %struct.ieee80211_tim_ie*
  store %struct.ieee80211_tim_ie* %121, %struct.ieee80211_tim_ie** %10, align 8
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %123 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 @WARN_ON_ONCE(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %115
  %132 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %10, align 8
  %133 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %136 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  br label %138

138:                                              ; preds = %131, %115
  %139 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %10, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %142 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @ieee80211_check_tim(%struct.ieee80211_tim_ie* %139, i32 %140, i32 %144)
  store i32 %145, i32* %13, align 4
  %146 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %10, align 8
  %147 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 1
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %152 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %138
  %157 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %158 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %162 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = call i32 @MSECS(i32 5)
  %165 = call i32 @queue_delayed_work(i32 %160, i32* %163, i32 %164)
  br label %173

166:                                              ; preds = %138
  %167 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %168 = load i32, i32* @COMP_POWER, align 4
  %169 = load i32, i32* @DBG_DMESG, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @RT_TRACE(%struct.rtl_priv* %167, i32 %168, i32 %169, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %27, %34, %42, %49, %56, %69, %76, %82, %93, %107, %114, %166, %156
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @ether_addr_equal_64bits(i32, i32) #1

declare dso_local i32* @rtl_find_ie(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_check_tim(%struct.ieee80211_tim_ie*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @MSECS(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
