; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_refresh_basic_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_refresh_basic_rate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__*, %struct.rtl_mac, %struct.dig_t }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.rtl_mac = type { i64, i32 }
%struct.dig_t = type { i32 }

@rtl8821ae_dm_refresh_basic_rate_mask.stage = internal global i32 0, align 4
@RRSR_1M = common dso_local global i32 0, align 4
@RRSR_2M = common dso_local global i32 0, align 4
@RRSR_5_5M = common dso_local global i32 0, align 4
@RRSR_11M = common dso_local global i32 0, align 4
@RRSR_6M = common dso_local global i32 0, align 4
@MAC80211_LINKED = common dso_local global i64 0, align 8
@HW_VAR_BASIC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8821ae_dm_refresh_basic_rate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8821ae_dm_refresh_basic_rate_mask(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 2
  store %struct.dig_t* %11, %struct.dig_t** %4, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 1
  store %struct.rtl_mac* %13, %struct.rtl_mac** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @RRSR_1M, align 4
  %15 = load i32, i32* @RRSR_2M, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RRSR_5_5M, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RRSR_11M, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RRSR_6M, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %24 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAC80211_LINKED, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %44

29:                                               ; preds = %1
  %30 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %31 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 25
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %43

35:                                               ; preds = %29
  %36 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %37 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 30
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 3, i32* %6, align 4
  br label %42

41:                                               ; preds = %35
  store i32 2, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %34
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @rtl8821ae_dm_refresh_basic_rate_mask.stage, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %96

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %54 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = xor i32 %52, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %63 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %67, align 8
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %70 = load i32, i32* @HW_VAR_BASIC_RATE, align 4
  %71 = call i32 %68(%struct.ieee80211_hw* %69, i32 %70, i32* %7)
  br label %95

72:                                               ; preds = %48
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load i32, i32* @rtl8821ae_dm_refresh_basic_rate_mask.stage, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @rtl8821ae_dm_refresh_basic_rate_mask.stage, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %94

81:                                               ; preds = %78, %75
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %83 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %87, align 8
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %90 = load i32, i32* @HW_VAR_BASIC_RATE, align 4
  %91 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %92 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %91, i32 0, i32 1
  %93 = call i32 %88(%struct.ieee80211_hw* %89, i32 %90, i32* %92)
  br label %94

94:                                               ; preds = %81, %78, %72
  br label %95

95:                                               ; preds = %94, %51
  br label %96

96:                                               ; preds = %95, %44
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* @rtl8821ae_dm_refresh_basic_rate_mask.stage, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
