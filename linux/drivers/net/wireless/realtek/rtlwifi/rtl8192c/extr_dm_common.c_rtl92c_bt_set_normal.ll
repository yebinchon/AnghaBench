; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_bt_set_normal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_bt_set_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@BT_OTHERBUSY = common dso_local global i64 0, align 8
@BT_BUSY = common dso_local global i64 0, align 8
@BT_SCO = common dso_local global i64 0, align 8
@BT_IDLE = common dso_local global i64 0, align 8
@WIRELESS_MODE_G = common dso_local global i32 0, align 4
@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@BT_RSSI_STATE_BG_EDCA_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92c_bt_set_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_bt_set_normal(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %4)
  store %struct.rtl_priv* %5, %struct.rtl_priv** %3, align 8
  %6 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BT_OTHERBUSY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 6203179, i32* %15, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i32 6203179, i32* %18, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BT_BUSY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 6207535, i32* %29, align 8
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 6207535, i32* %32, align 4
  br label %69

33:                                               ; preds = %19
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BT_SCO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %33
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 160
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %48 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 6203183, i32* %49, align 8
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 6203183, i32* %52, align 4
  br label %60

53:                                               ; preds = %40
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 6202155, i32* %56, align 8
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %58 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 6202411, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %46
  br label %68

61:                                               ; preds = %33
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %63 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 0, i32* %64, align 8
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %66 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %60
  br label %69

69:                                               ; preds = %68, %26
  br label %70

70:                                               ; preds = %69, %12
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @BT_IDLE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %70
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %79 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @WIRELESS_MODE_G, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %93, label %84

84:                                               ; preds = %77
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %86 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @WIRELESS_MODE_G, align 4
  %90 = load i32, i32* @WIRELESS_MODE_B, align 4
  %91 = or i32 %89, %90
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %84, %77
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %95 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BT_RSSI_STATE_BG_EDCA_LOW, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 6207531, i32* %104, align 8
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %106 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i32 6207531, i32* %107, align 4
  br label %108

108:                                              ; preds = %101, %93, %84, %70
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
