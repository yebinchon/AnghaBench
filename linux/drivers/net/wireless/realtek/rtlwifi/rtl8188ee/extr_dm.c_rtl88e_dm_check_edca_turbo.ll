; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_check_edca_turbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_check_edca_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.rtl_mac = type { i64 }

@rtl88e_dm_check_edca_turbo.last_txok_cnt = internal global i32 0, align 4
@rtl88e_dm_check_edca_turbo.last_rxok_cnt = internal global i32 0, align 4
@rtl88e_dm_check_edca_turbo.last_bt_edca_ul = internal global i64 0, align 8
@rtl88e_dm_check_edca_turbo.last_bt_edca_dl = internal global i64 0, align 8
@MAC80211_LINKED = common dso_local global i64 0, align 8
@REG_EDCA_BE_PARAM = common dso_local global i32 0, align 4
@AC0_BE = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl88e_dm_check_edca_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_dm_check_edca_turbo(%struct.ieee80211_hw* %0) #0 {
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
  %16 = load i64, i64* @rtl88e_dm_check_edca_turbo.last_bt_edca_ul, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %16, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load i64, i64* @rtl88e_dm_check_edca_turbo.last_bt_edca_dl, align 8
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
  store i64 %36, i64* @rtl88e_dm_check_edca_turbo.last_bt_edca_ul, align 8
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* @rtl88e_dm_check_edca_turbo.last_bt_edca_dl, align 8
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
  br label %185

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %73
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %78 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %151, label %82

82:                                               ; preds = %76
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %84 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %151, label %88

88:                                               ; preds = %82, %73
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %90 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @rtl88e_dm_check_edca_turbo.last_txok_cnt, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %5, align 4
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %96 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @rtl88e_dm_check_edca_turbo.last_rxok_cnt, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %5, align 4
  %103 = mul nsw i32 4, %102
  %104 = icmp sgt i32 %101, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %88
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %107 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %113 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %111, %105
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %119 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @rtl_write_dword(%struct.rtl_priv* %118, i32 %119, i64 %120)
  %122 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %123 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %117, %111
  br label %147

126:                                              ; preds = %88
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %128 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %134 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %132, %126
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %140 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %141 = load i64, i64* %7, align 8
  %142 = call i32 @rtl_write_dword(%struct.rtl_priv* %139, i32 %140, i64 %141)
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %144 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 2
  store i32 0, i32* %145, align 8
  br label %146

146:                                              ; preds = %138, %132
  br label %147

147:                                              ; preds = %146, %125
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %149 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  br label %173

151:                                              ; preds = %82, %76
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %153 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %151
  %158 = load i32, i32* @AC0_BE, align 4
  store i32 %158, i32* %10, align 4
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %160 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %159, i32 0, i32 2
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %164, align 8
  %166 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %167 = load i32, i32* @HW_VAR_AC_PARAM, align 4
  %168 = call i32 %165(%struct.ieee80211_hw* %166, i32 %167, i32* %10)
  %169 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %170 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  br label %172

172:                                              ; preds = %157, %151
  br label %173

173:                                              ; preds = %172, %147
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %175 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  store i32 0, i32* %176, align 4
  %177 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %178 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* @rtl88e_dm_check_edca_turbo.last_txok_cnt, align 4
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %182 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* @rtl88e_dm_check_edca_turbo.last_rxok_cnt, align 4
  br label %185

185:                                              ; preds = %173, %69
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
