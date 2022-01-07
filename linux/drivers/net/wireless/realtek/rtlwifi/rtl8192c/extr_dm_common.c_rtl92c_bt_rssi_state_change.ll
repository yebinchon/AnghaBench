; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_bt_rssi_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_bt_rssi_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@BT_RSSI_STATE_NORMAL_POWER = common dso_local global i32 0, align 4
@BT_RSSI_STATE_AMDPU_OFF = common dso_local global i32 0, align 4
@BT_RSSI_STATE_SPECIAL_LOW = common dso_local global i32 0, align 4
@BT_RSSI_STATE_BG_EDCA_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92c_bt_rssi_state_change(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAC80211_LINKED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %17 = call i64 @GET_UNDECORATED_AVERAGE_RSSI(%struct.rtl_priv* %16)
  store i64 %17, i64* %5, align 8
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i64 100, i64* %5, align 8
  br label %30

25:                                               ; preds = %18
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %25, %24
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i64, i64* %5, align 8
  %33 = icmp sge i64 %32, 67
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* @BT_RSSI_STATE_NORMAL_POWER, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %47

39:                                               ; preds = %31
  %40 = load i64, i64* %5, align 8
  %41 = icmp slt i64 %40, 62
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @BT_RSSI_STATE_NORMAL_POWER, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i64, i64* %5, align 8
  %49 = icmp sge i64 %48, 40
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @BT_RSSI_STATE_AMDPU_OFF, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %63

55:                                               ; preds = %47
  %56 = load i64, i64* %5, align 8
  %57 = icmp sle i64 %56, 32
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @BT_RSSI_STATE_AMDPU_OFF, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i64, i64* %5, align 8
  %65 = icmp slt i64 %64, 35
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* @BT_RSSI_STATE_SPECIAL_LOW, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %75

70:                                               ; preds = %63
  %71 = load i32, i32* @BT_RSSI_STATE_SPECIAL_LOW, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i64, i64* %5, align 8
  %77 = icmp slt i64 %76, 15
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* @BT_RSSI_STATE_BG_EDCA_LOW, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %87

82:                                               ; preds = %75
  %83 = load i32, i32* @BT_RSSI_STATE_BG_EDCA_LOW, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %82, %78
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %90 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %88, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %97 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  store i32 1, i32* %2, align 4
  br label %100

99:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %94
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @GET_UNDECORATED_AVERAGE_RSSI(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
