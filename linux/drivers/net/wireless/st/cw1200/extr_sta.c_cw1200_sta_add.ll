; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_sta_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i64, i32, %struct.TYPE_2__*, i32, %struct.cw1200_link_entry* }
%struct.TYPE_2__ = type { i32 }
%struct.cw1200_link_entry = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i32, i32 }
%struct.cw1200_sta_priv = type { i32 }
%struct.sk_buff = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"[AP] No more link IDs available.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK = common dso_local global i32 0, align 4
@CW1200_LINK_HARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.cw1200_common*, align 8
  %9 = alloca %struct.cw1200_sta_priv*, align 8
  %10 = alloca %struct.cw1200_link_entry*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.cw1200_common*, %struct.cw1200_common** %13, align 8
  store %struct.cw1200_common* %14, %struct.cw1200_common** %8, align 8
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %15, i32 0, i32 2
  %17 = bitcast i32* %16 to %struct.cw1200_sta_priv*
  store %struct.cw1200_sta_priv* %17, %struct.cw1200_sta_priv** %9, align 8
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %19 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %97

24:                                               ; preds = %3
  %25 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cw1200_find_link_id(%struct.cw1200_common* %25, i32 %28)
  %30 = load %struct.cw1200_sta_priv*, %struct.cw1200_sta_priv** %9, align 8
  %31 = getelementptr inbounds %struct.cw1200_sta_priv, %struct.cw1200_sta_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.cw1200_sta_priv*, %struct.cw1200_sta_priv** %9, align 8
  %33 = getelementptr inbounds %struct.cw1200_sta_priv, %struct.cw1200_sta_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %24
  %41 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %42 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wiphy_info(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %97

49:                                               ; preds = %24
  %50 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %51 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %50, i32 0, i32 4
  %52 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %51, align 8
  %53 = load %struct.cw1200_sta_priv*, %struct.cw1200_sta_priv** %9, align 8
  %54 = getelementptr inbounds %struct.cw1200_sta_priv, %struct.cw1200_sta_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %52, i64 %57
  store %struct.cw1200_link_entry* %58, %struct.cw1200_link_entry** %10, align 8
  %59 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %60 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %59, i32 0, i32 1
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %49
  %70 = load %struct.cw1200_sta_priv*, %struct.cw1200_sta_priv** %9, align 8
  %71 = getelementptr inbounds %struct.cw1200_sta_priv, %struct.cw1200_sta_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %75 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %69, %49
  %79 = load i32, i32* @CW1200_LINK_HARD, align 4
  %80 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %10, align 8
  %81 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %87, %78
  %83 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %10, align 8
  %84 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %83, i32 0, i32 0
  %85 = call %struct.sk_buff* @skb_dequeue(i32* %84)
  store %struct.sk_buff* %85, %struct.sk_buff** %11, align 8
  %86 = icmp ne %struct.sk_buff* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %89 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %92 = call i32 @ieee80211_rx_irqsafe(%struct.TYPE_2__* %90, %struct.sk_buff* %91)
  br label %82

93:                                               ; preds = %82
  %94 = load %struct.cw1200_common*, %struct.cw1200_common** %8, align 8
  %95 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock_bh(i32* %95)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %40, %23
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @cw1200_find_link_id(%struct.cw1200_common*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wiphy_info(i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ieee80211_rx_irqsafe(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
