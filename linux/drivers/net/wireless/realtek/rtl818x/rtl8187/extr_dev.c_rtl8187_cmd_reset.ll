; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_cmd_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_cmd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RTL818X_CMD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Reset timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_LOAD = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"eeprom reset timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8187_cmd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8187_cmd_reset(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8187_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 1
  %9 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %8, align 8
  store %struct.rtl8187_priv* %9, %struct.rtl8187_priv** %4, align 8
  %10 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %11 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %12 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %10, i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 2
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @RTL818X_CMD_RESET, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %22 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %23 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %21, i32* %25, i32 %26)
  store i32 10, i32* %6, align 4
  br label %28

28:                                               ; preds = %41, %1
  %29 = call i32 @msleep(i32 2)
  %30 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %31 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %32 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %30, i32* %34)
  %36 = load i32, i32* @RTL818X_CMD_RESET, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %45

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %28, label %45

45:                                               ; preds = %41, %39
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @wiphy_err(i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %91

55:                                               ; preds = %45
  %56 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %57 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %58 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* @RTL818X_EEPROM_CMD_LOAD, align 4
  %62 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %56, i32* %60, i32 %61)
  store i32 10, i32* %6, align 4
  br label %63

63:                                               ; preds = %76, %55
  %64 = call i32 @msleep(i32 4)
  %65 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %66 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %67 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %65, i32* %69)
  %71 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %63
  br label %80

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %63, label %80

80:                                               ; preds = %76, %74
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @wiphy_err(i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @ETIMEDOUT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %91

90:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %83, %48
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
