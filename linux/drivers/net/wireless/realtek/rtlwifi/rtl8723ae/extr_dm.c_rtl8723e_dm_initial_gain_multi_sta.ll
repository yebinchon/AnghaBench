; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_initial_gain_multi_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_initial_gain_multi_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i64 }
%struct.dig_t = type { i64, i64, i32, i64, i64, i64 }
%struct.rtl_mac = type { i64 }

@rtl8723e_dm_initial_gain_multi_sta.binitialized = internal global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@DIG_STA_DISCONNECT = common dso_local global i64 0, align 8
@DIG_EXT_PORT_STAGE_MAX = common dso_local global i64 0, align 8
@DIG_EXT_PORT_STAGE_0 = common dso_local global i64 0, align 8
@DIG_MULTISTA_CONNECT = common dso_local global i64 0, align 8
@DIG_EXT_PORT_STAGE_1 = common dso_local global i64 0, align 8
@DIG_EXT_PORT_STAGE_2 = common dso_local global i64 0, align 8
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"curmultista_cstate = %x dig_ext_port_stage %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_dm_initial_gain_multi_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_initial_gain_multi_sta(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca %struct.dig_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %11)
  store %struct.rtl_mac* %12, %struct.rtl_mac** %4, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 1
  store %struct.dig_t* %14, %struct.dig_t** %5, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %20 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %30 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DIG_STA_DISCONNECT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %25
  store i32 0, i32* @rtl8723e_dm_initial_gain_multi_sta.binitialized, align 4
  %35 = load i64, i64* @DIG_EXT_PORT_STAGE_MAX, align 8
  %36 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %37 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %123

38:                                               ; preds = %28
  %39 = load i32, i32* @rtl8723e_dm_initial_gain_multi_sta.binitialized, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  store i32 1, i32* @rtl8723e_dm_initial_gain_multi_sta.binitialized, align 4
  %42 = load i64, i64* @DIG_EXT_PORT_STAGE_0, align 8
  %43 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %44 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %46 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %45, i32 0, i32 2
  store i32 32, i32* %46, align 8
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %48 = call i32 @rtl8723e_dm_write_dig(%struct.ieee80211_hw* %47)
  br label %49

49:                                               ; preds = %41, %38
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %52 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DIG_MULTISTA_CONNECT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %50
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %59 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %64 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DIG_EXT_PORT_STAGE_1, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %70 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DIG_EXT_PORT_STAGE_2, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %76 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %75, i32 0, i32 2
  store i32 32, i32* %76, align 8
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %78 = call i32 @rtl8723e_dm_write_dig(%struct.ieee80211_hw* %77)
  br label %79

79:                                               ; preds = %74, %68
  %80 = load i64, i64* @DIG_EXT_PORT_STAGE_1, align 8
  %81 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %82 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %96

83:                                               ; preds = %62, %56
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %86 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i64, i64* @DIG_EXT_PORT_STAGE_2, align 8
  %91 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %92 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %94 = call i32 @rtl92c_dm_ctrl_initgain_by_fa(%struct.ieee80211_hw* %93)
  br label %95

95:                                               ; preds = %89, %83
  br label %96

96:                                               ; preds = %95, %79
  br label %112

97:                                               ; preds = %50
  %98 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %99 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DIG_EXT_PORT_STAGE_0, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load i64, i64* @DIG_EXT_PORT_STAGE_0, align 8
  %105 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %106 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %108 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %107, i32 0, i32 2
  store i32 32, i32* %108, align 8
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %110 = call i32 @rtl8723e_dm_write_dig(%struct.ieee80211_hw* %109)
  br label %111

111:                                              ; preds = %103, %97
  br label %112

112:                                              ; preds = %111, %96
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %114 = load i32, i32* @COMP_DIG, align 4
  %115 = load i32, i32* @DBG_TRACE, align 4
  %116 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %117 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %120 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @RT_TRACE(%struct.rtl_priv* %113, i32 %114, i32 %115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %118, i64 %121)
  br label %123

123:                                              ; preds = %112, %34
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8723e_dm_write_dig(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_ctrl_initgain_by_fa(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
