; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_check_edca_turbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_check_edca_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }

@rtl92ee_dm_check_edca_turbo.last_txok_cnt = internal global i32 0, align 4
@rtl92ee_dm_check_edca_turbo.last_rxok_cnt = internal global i32 0, align 4
@REG_EDCA_BE_PARAM = common dso_local global i32 0, align 4
@AC0_BE = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92ee_dm_check_edca_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92ee_dm_check_edca_turbo(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 6202411, i32* %6, align 4
  store i32 6202411, i32* %7, align 4
  store i32 6202411, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 256
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @rtl92ee_dm_check_edca_turbo.last_txok_cnt, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %4, align 4
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @rtl92ee_dm_check_edca_turbo.last_rxok_cnt, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %5, align 4
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %24
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %48 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %46, %24
  %54 = phi i1 [ false, %24 ], [ %52, %46 ]
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  store i32 %56, i32* %10, align 4
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = call i64 @rtl92ee_dm_is_edca_turbo_disable(%struct.ieee80211_hw* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %113

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %4, align 4
  %67 = mul nsw i32 %66, 4
  %68 = icmp sgt i32 %65, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %7, align 4
  br label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %8, align 4
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @rtl_write_dword(%struct.rtl_priv* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %85 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %88 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  store i32 1, i32* %89, align 8
  br label %112

90:                                               ; preds = %61
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %92 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i32, i32* @AC0_BE, align 4
  store i32 %97, i32* %11, align 4
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %99 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %103, align 8
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %106 = load i32, i32* @HW_VAR_AC_PARAM, align 4
  %107 = call i32 %104(%struct.ieee80211_hw* %105, i32 %106, i32* %11)
  br label %108

108:                                              ; preds = %96, %90
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %110 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %108, %77
  br label %113

113:                                              ; preds = %112, %60
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %115 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %118 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* @rtl92ee_dm_check_edca_turbo.last_txok_cnt, align 4
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %122 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* @rtl92ee_dm_check_edca_turbo.last_rxok_cnt, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl92ee_dm_is_edca_turbo_disable(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
