; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_dynamic_edcca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_dynamic_edcca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }

@HW_VAR_FW_PSMODE_STATUS = common dso_local global i32 0, align 4
@ROFDM0_XAAGCCORE1 = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@ROFDM0_XBAGCCORE1 = common dso_local global i32 0, align 4
@ROFDM0_ECCATHRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92ee_dm_dynamic_edcca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92ee_dm_dynamic_edcca(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %14, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = load i32, i32* @HW_VAR_FW_PSMODE_STATUS, align 4
  %18 = call i32 %15(%struct.ieee80211_hw* %16, i32 %17, i32* %6)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %79

22:                                               ; preds = %1
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = load i32, i32* @ROFDM0_XAAGCCORE1, align 4
  %25 = load i32, i32* @MASKBYTE0, align 4
  %26 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = load i32, i32* @ROFDM0_XBAGCCORE1, align 4
  %29 = load i32, i32* @MASKBYTE0, align 4
  %30 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 40
  br i1 %32, label %33, label %54

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 40
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %36
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = load i64, i64* @ROFDM0_ECCATHRESHOLD, align 8
  %45 = call i32 @rtl_write_byte(%struct.rtl_priv* %43, i64 %44, i32 3)
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = load i64, i64* @ROFDM0_ECCATHRESHOLD, align 8
  %48 = add nsw i64 %47, 2
  %49 = call i32 @rtl_write_byte(%struct.rtl_priv* %46, i64 %48, i32 0)
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %42, %36
  br label %79

54:                                               ; preds = %33, %22
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 37
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 37
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %68 = load i64, i64* @ROFDM0_ECCATHRESHOLD, align 8
  %69 = call i32 @rtl_write_byte(%struct.rtl_priv* %67, i64 %68, i32 127)
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = load i64, i64* @ROFDM0_ECCATHRESHOLD, align 8
  %72 = add nsw i64 %71, 2
  %73 = call i32 @rtl_write_byte(%struct.rtl_priv* %70, i64 %72, i32 127)
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %75 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %66, %60
  br label %78

78:                                               ; preds = %77, %57, %54
  br label %79

79:                                               ; preds = %21, %78, %53
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
