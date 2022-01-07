; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_get_power_info_5g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_get_power_info_5g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.mt76x2_tx_power_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8* }
%struct.ieee80211_channel = type { i32 }

@MT_TX_POWER_GROUP_SIZE_5G = common dso_local global i32 0, align 4
@MT_EE_RF_2G_RX_HIGH_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, %struct.mt76x2_tx_power_info*, %struct.ieee80211_channel*, i32, i32)* @mt76x2_get_power_info_5g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2_get_power_info_5g(%struct.mt76x02_dev* %0, %struct.mt76x2_tx_power_info* %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mt76x02_dev*, align 8
  %7 = alloca %struct.mt76x2_tx_power_info*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [5 x i8*], align 16
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %6, align 8
  store %struct.mt76x2_tx_power_info* %1, %struct.mt76x2_tx_power_info** %7, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @mt76x2_get_cal_channel_group(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @MT_TX_POWER_GROUP_SIZE_5G, align 4
  %23 = mul i32 %21, %22
  %24 = load i32, i32* %10, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sge i32 %26, 192
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 4, i32* %13, align 4
  br label %80

29:                                               ; preds = %5
  %30 = load i32, i32* %11, align 4
  %31 = icmp sge i32 %30, 184
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 3, i32* %13, align 4
  br label %79

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 44
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 3, i32* %13, align 4
  br label %78

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 52
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 4, i32* %13, align 4
  br label %77

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 58
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 3, i32* %13, align 4
  br label %76

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 98
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 4, i32* %13, align 4
  br label %75

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 106
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 3, i32* %13, align 4
  br label %74

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 116
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 4, i32* %13, align 4
  br label %73

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 130
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 3, i32* %13, align 4
  br label %72

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 149
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 4, i32* %13, align 4
  br label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 157
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 3, i32* %13, align 4
  br label %70

69:                                               ; preds = %65
  store i32 4, i32* %13, align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %71

71:                                               ; preds = %70, %64
  br label %72

72:                                               ; preds = %71, %60
  br label %73

73:                                               ; preds = %72, %56
  br label %74

74:                                               ; preds = %73, %52
  br label %75

75:                                               ; preds = %74, %48
  br label %76

76:                                               ; preds = %75, %44
  br label %77

77:                                               ; preds = %76, %40
  br label %78

78:                                               ; preds = %77, %36
  br label %79

79:                                               ; preds = %78, %32
  br label %80

80:                                               ; preds = %79, %28
  %81 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %84 = call i32 @mt76x02_eeprom_copy(%struct.mt76x02_dev* %81, i32 %82, i8** %83, i32 40)
  %85 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %86 = load i8*, i8** %85, align 16
  %87 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %7, align 8
  %88 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  store i8* %86, i8** %93, align 8
  %94 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %7, align 8
  %97 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  store i8* %95, i8** %102, align 8
  %103 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 2
  %104 = load i8*, i8** %103, align 16
  %105 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %7, align 8
  %106 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i8* %104, i8** %111, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @mt76x02_sign_extend_optional(i8* %115, i32 7)
  %117 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %7, align 8
  %118 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store i32 %116, i32* %123, align 8
  %124 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %125 = load i32, i32* @MT_EE_RF_2G_RX_HIGH_GAIN, align 4
  %126 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %124, i32 %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = and i32 %127, 255
  %129 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %7, align 8
  %130 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  ret void
}

declare dso_local i32 @mt76x2_get_cal_channel_group(i32) #1

declare dso_local i32 @mt76x02_eeprom_copy(%struct.mt76x02_dev*, i32, i8**, i32) #1

declare dso_local i32 @mt76x02_sign_extend_optional(i8*, i32) #1

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
