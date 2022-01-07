; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_get_power_info_2g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_get_power_info_2g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.mt76x2_tx_power_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8* }
%struct.ieee80211_channel = type { i32 }

@MT_EE_RF_2G_TSSI_OFF_TXPOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, %struct.mt76x2_tx_power_info*, %struct.ieee80211_channel*, i32, i32)* @mt76x2_get_power_info_2g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2_get_power_info_2g(%struct.mt76x02_dev* %0, %struct.mt76x2_tx_power_info* %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mt76x02_dev*, align 8
  %7 = alloca %struct.mt76x2_tx_power_info*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x i8*], align 16
  %14 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %6, align 8
  store %struct.mt76x2_tx_power_info* %1, %struct.mt76x2_tx_power_info** %7, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 3, i32* %12, align 4
  br label %27

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 11
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 4, i32* %12, align 4
  br label %26

25:                                               ; preds = %21
  store i32 5, i32* %12, align 4
  br label %26

26:                                               ; preds = %25, %24
  br label %27

27:                                               ; preds = %26, %20
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 0
  %31 = call i32 @mt76x02_eeprom_copy(%struct.mt76x02_dev* %28, i32 %29, i8** %30, i32 48)
  %32 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 0
  %33 = load i8*, i8** %32, align 16
  %34 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %7, align 8
  %35 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i8* %33, i8** %40, align 8
  %41 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %7, align 8
  %44 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i8* %42, i8** %49, align 8
  %50 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 2
  %51 = load i8*, i8** %50, align 16
  %52 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %7, align 8
  %53 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i8* %51, i8** %58, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @mt76x02_sign_extend_optional(i8* %62, i32 7)
  %64 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %7, align 8
  %65 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %63, i32* %70, align 8
  %71 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %72 = load i32, i32* @MT_EE_RF_2G_TSSI_OFF_TXPOWER, align 4
  %73 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = ashr i32 %74, 8
  %76 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %7, align 8
  %77 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  ret void
}

declare dso_local i32 @mt76x02_eeprom_copy(%struct.mt76x02_dev*, i32, i8**, i32) #1

declare dso_local i32 @mt76x02_sign_extend_optional(i8*, i32) #1

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
