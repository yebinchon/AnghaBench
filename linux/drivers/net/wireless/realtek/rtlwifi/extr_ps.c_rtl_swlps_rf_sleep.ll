; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_swlps_rf_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_swlps_rf_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_13__ = type { i32 (%struct.ieee80211_hw*)* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.rtl_mac = type { i64, i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.rtl_ps_ctl = type { i32 }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@MAC80211_LINKED = common dso_local global i64 0, align 8
@ERFSLEEP = common dso_local global i32 0, align 4
@RF_CHANGE_BY_PS = common dso_local global i32 0, align 4
@RT_RF_OFF_LEVL_ASPM = common dso_local global i32 0, align 4
@RT_PS_LEVEL_ASPM = common dso_local global i32 0, align 4
@MAX_SW_LPS_SLEEP_INTV = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"dtim_counter:%x will sleep :%d beacon_intv\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_swlps_rf_sleep(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %10)
  store %struct.rtl_mac* %11, %struct.rtl_mac** %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %13)
  store %struct.rtl_ps_ctl* %14, %struct.rtl_ps_ctl** %5, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %170

21:                                               ; preds = %1
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %29 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21
  br label %170

34:                                               ; preds = %27
  %35 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %36 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MAC80211_LINKED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %42 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 5
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %34
  br label %170

46:                                               ; preds = %40
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %48 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %170

53:                                               ; preds = %46
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = call i32 @spin_unlock(i32* %66)
  br label %170

68:                                               ; preds = %53
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %70 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %78 = load i32, i32* @ERFSLEEP, align 4
  %79 = load i32, i32* @RF_CHANGE_BY_PS, align 4
  %80 = call i32 @rtl_ps_set_rf_state(%struct.ieee80211_hw* %77, i32 %78, i32 %79)
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %82 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %86 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RT_RF_OFF_LEVL_ASPM, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %68
  %92 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %93 = load i32, i32* @RT_PS_LEVEL_ASPM, align 4
  %94 = call i32 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %98 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %97, i32 0, i32 2
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %100, align 8
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %103 = call i32 %101(%struct.ieee80211_hw* %102)
  %104 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %105 = load i32, i32* @RT_PS_LEVEL_ASPM, align 4
  %106 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %104, i32 %105)
  br label %107

107:                                              ; preds = %96, %91, %68
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %109 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %107
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %115 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %121 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %123, 2
  store i32 %124, i32* %6, align 4
  br label %130

125:                                              ; preds = %113
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %127 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %125, %119
  br label %136

131:                                              ; preds = %107
  %132 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %133 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %131, %130
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @MAX_SW_LPS_SLEEP_INTV, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* @MAX_SW_LPS_SLEEP_INTV, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %140, %136
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %144 = load i32, i32* @COMP_POWER, align 4
  %145 = load i32, i32* @DBG_DMESG, align 4
  %146 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %147 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @RT_TRACE(%struct.rtl_priv* %143, i32 %144, i32 %145, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %153 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %157 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %161 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %160, i32 0, i32 3
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %159, %165
  %167 = sub nsw i32 %166, 40
  %168 = call i32 @MSECS(i32 %167)
  %169 = call i32 @queue_delayed_work(i32 %155, i32* %158, i32 %168)
  br label %170

170:                                              ; preds = %142, %63, %52, %45, %33, %20
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtl_ps_set_rf_state(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @MSECS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
