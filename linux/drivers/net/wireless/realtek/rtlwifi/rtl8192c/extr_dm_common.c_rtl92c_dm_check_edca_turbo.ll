; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_check_edca_turbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_check_edca_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.rtl_mac = type { i64, i32 }

@rtl92c_dm_check_edca_turbo.last_txok_cnt = internal global i32 0, align 4
@rtl92c_dm_check_edca_turbo.last_rxok_cnt = internal global i32 0, align 4
@rtl92c_dm_check_edca_turbo.last_bt_edca_ul = internal global i64 0, align 8
@rtl92c_dm_check_edca_turbo.last_bt_edca_dl = internal global i64 0, align 8
@MAC80211_LINKED = common dso_local global i64 0, align 8
@REG_EDCA_BE_PARAM = common dso_local global i32 0, align 4
@AC0_BE = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92c_dm_check_edca_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_dm_check_edca_turbo(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %3, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %14)
  store %struct.rtl_mac* %15, %struct.rtl_mac** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 6202411, i64* %7, align 8
  store i64 6202411, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i64, i64* @rtl92c_dm_check_edca_turbo.last_bt_edca_ul, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %16, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load i64, i64* @rtl92c_dm_check_edca_turbo.last_bt_edca_dl, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %22, %1
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* @rtl92c_dm_check_edca_turbo.last_bt_edca_ul, align 8
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* @rtl92c_dm_check_edca_turbo.last_bt_edca_dl, align 8
  br label %41

41:                                               ; preds = %29, %22
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %7, align 8
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %47, %41
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %7, align 8
  store i32 1, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %52
  %64 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %65 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MAC80211_LINKED, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %211

73:                                               ; preds = %63
  %74 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %75 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %99, label %78

78:                                               ; preds = %73
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %78
  %85 = load i64, i64* %7, align 8
  %86 = and i64 %85, 4294901760
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %7, align 8
  %90 = or i64 %89, 6160384
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i64, i64* %8, align 8
  %93 = and i64 %92, 4294901760
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %8, align 8
  %97 = or i64 %96, 6160384
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %95, %91
  br label %99

99:                                               ; preds = %98, %78, %73
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %99
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %104 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %177, label %108

108:                                              ; preds = %102
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %110 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %177, label %114

114:                                              ; preds = %108, %99
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %116 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @rtl92c_dm_check_edca_turbo.last_txok_cnt, align 4
  %120 = sub nsw i32 %118, %119
  store i32 %120, i32* %5, align 4
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %122 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @rtl92c_dm_check_edca_turbo.last_rxok_cnt, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %5, align 4
  %129 = mul nsw i32 4, %128
  %130 = icmp sgt i32 %127, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %114
  %132 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %133 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %139 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %137, %131
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %145 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %146 = load i64, i64* %8, align 8
  %147 = call i32 @rtl_write_dword(%struct.rtl_priv* %144, i32 %145, i64 %146)
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %149 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  store i32 1, i32* %150, align 8
  br label %151

151:                                              ; preds = %143, %137
  br label %173

152:                                              ; preds = %114
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %154 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %160 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %158, %152
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %166 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %167 = load i64, i64* %7, align 8
  %168 = call i32 @rtl_write_dword(%struct.rtl_priv* %165, i32 %166, i64 %167)
  %169 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %170 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  store i32 0, i32* %171, align 8
  br label %172

172:                                              ; preds = %164, %158
  br label %173

173:                                              ; preds = %172, %151
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %175 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  br label %199

177:                                              ; preds = %108, %102
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %179 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %198

183:                                              ; preds = %177
  %184 = load i32, i32* @AC0_BE, align 4
  store i32 %184, i32* %10, align 4
  %185 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %186 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %185, i32 0, i32 2
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %190, align 8
  %192 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %193 = load i32, i32* @HW_VAR_AC_PARAM, align 4
  %194 = call i32 %191(%struct.ieee80211_hw* %192, i32 %193, i32* %10)
  %195 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %196 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  br label %198

198:                                              ; preds = %183, %177
  br label %199

199:                                              ; preds = %198, %173
  %200 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %201 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 1
  store i32 0, i32* %202, align 4
  %203 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %204 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* @rtl92c_dm_check_edca_turbo.last_txok_cnt, align 4
  %207 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %208 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* @rtl92c_dm_check_edca_turbo.last_rxok_cnt, align 4
  br label %211

211:                                              ; preds = %199, %69
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
