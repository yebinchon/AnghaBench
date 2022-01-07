; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_check_edca_turbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_check_edca_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.TYPE_6__ = type { i64 }
%struct.rtl_mac = type { i64 }

@rtl92d_dm_check_edca_turbo.last_txok_cnt = internal global i32 0, align 4
@rtl92d_dm_check_edca_turbo.last_rxok_cnt = internal global i32 0, align 4
@MAC80211_LINKED = common dso_local global i64 0, align 8
@WEP40_ENCRYPTION = common dso_local global i64 0, align 8
@WEP104_ENCRYPTION = common dso_local global i64 0, align 8
@TKIP_ENCRYPTION = common dso_local global i64 0, align 8
@REG_EDCA_BE_PARAM = common dso_local global i32 0, align 4
@AC0_BE = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92d_dm_check_edca_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92d_dm_check_edca_turbo(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %3, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %13)
  store %struct.rtl_mac* %14, %struct.rtl_mac** %4, align 8
  store i32 6202411, i32* %7, align 4
  store i32 6202411, i32* %8, align 4
  %15 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %16 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAC80211_LINKED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %164

24:                                               ; preds = %1
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %24
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WEP40_ENCRYPTION, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %51, label %37

37:                                               ; preds = %30
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WEP104_ENCRYPTION, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TKIP_ENCRYPTION, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %44, %37, %30
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, -65536
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, 6160384
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, -65536
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, 6160384
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %44, %24
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %68 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %141, label %72

72:                                               ; preds = %66
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %141, label %78

78:                                               ; preds = %72
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @rtl92d_dm_check_edca_turbo.last_txok_cnt, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %5, align 4
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %86 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @rtl92d_dm_check_edca_turbo.last_rxok_cnt, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %5, align 4
  %93 = mul nsw i32 4, %92
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %78
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %101, %95
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %109 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @rtl_write_dword(%struct.rtl_priv* %108, i32 %109, i32 %110)
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %113 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %107, %101
  br label %137

116:                                              ; preds = %78
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %118 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %124 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %122, %116
  %129 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %130 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @rtl_write_dword(%struct.rtl_priv* %129, i32 %130, i32 %131)
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %134 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  store i32 0, i32* %135, align 8
  br label %136

136:                                              ; preds = %128, %122
  br label %137

137:                                              ; preds = %136, %115
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %139 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  br label %163

141:                                              ; preds = %72, %66
  %142 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %143 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %141
  %148 = load i32, i32* @AC0_BE, align 4
  store i32 %148, i32* %9, align 4
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %150 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %149, i32 0, i32 2
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %154, align 8
  %156 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %157 = load i32, i32* @HW_VAR_AC_PARAM, align 4
  %158 = call i32 %155(%struct.ieee80211_hw* %156, i32 %157, i32* %9)
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %160 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  br label %162

162:                                              ; preds = %147, %141
  br label %163

163:                                              ; preds = %162, %137
  br label %164

164:                                              ; preds = %163, %20
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %166 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %169 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* @rtl92d_dm_check_edca_turbo.last_txok_cnt, align 4
  %172 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %173 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* @rtl92d_dm_check_edca_turbo.last_rxok_cnt, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
