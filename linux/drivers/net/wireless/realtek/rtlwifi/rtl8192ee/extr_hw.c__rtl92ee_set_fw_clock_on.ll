; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_set_fw_clock_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_set_fw_clock_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.TYPE_6__ = type { i32 }
%struct.rtl_hal = type { i32, i32, i32 }

@HAL_DEF_WOWLAN = common dso_local global i32 0, align 4
@HW_VAR_SET_RPWM = common dso_local global i32 0, align 4
@REG_HISR = common dso_local global i32 0, align 4
@IMR_CPWM = common dso_local global i32 0, align 4
@FW_PS_STATE_RF_ON_92E = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Receive CPWM INT!!! PSState = %X\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @_rtl92ee_set_fw_clock_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_set_fw_clock_on(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %7, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %17)
  store %struct.rtl_hal* %18, %struct.rtl_hal** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %25, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %28 = load i32, i32* @HAL_DEF_WOWLAN, align 4
  %29 = call i32 %26(%struct.ieee80211_hw* %27, i32 %28, i32* %9)
  %30 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %31 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  br label %182

35:                                               ; preds = %3
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %37 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %182

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %86
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_bh(i32* %46)
  %48 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %49 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %69, %52
  %54 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %55 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  %65 = call i32 @udelay(i32 100)
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 1000
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %182

69:                                               ; preds = %58
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %71 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = call i32 @spin_lock_bh(i32* %72)
  br label %53

74:                                               ; preds = %53
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %76 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_bh(i32* %77)
  br label %86

79:                                               ; preds = %43
  %80 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %81 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %80, i32 0, i32 0
  store i32 0, i32* %81, align 4
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %83 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_bh(i32* %84)
  br label %87

86:                                               ; preds = %74
  br label %43

87:                                               ; preds = %79
  %88 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %89 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @IS_IN_LOW_POWER_STATE_92E(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %171

93:                                               ; preds = %87
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %95 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %94, i32 0, i32 2
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %99, align 8
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %102 = load i32, i32* @HW_VAR_SET_RPWM, align 4
  %103 = call i32 %100(%struct.ieee80211_hw* %101, i32 %102, i32* %5)
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @FW_PS_IS_ACK(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %149

107:                                              ; preds = %93
  %108 = load i32, i32* @REG_HISR, align 4
  store i32 %108, i32* %11, align 4
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @rtl_read_dword(%struct.rtl_priv* %109, i32 %110)
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %122, %107
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @IMR_CPWM, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 500
  br label %120

120:                                              ; preds = %117, %112
  %121 = phi i1 [ false, %112 ], [ %119, %117 ]
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  %123 = call i32 @udelay(i32 50)
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @rtl_read_dword(%struct.rtl_priv* %126, i32 %127)
  store i32 %128, i32* %12, align 4
  br label %112

129:                                              ; preds = %120
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @IMR_CPWM, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %129
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @rtl_write_word(%struct.rtl_priv* %135, i32 %136, i32 256)
  %138 = load i32, i32* @FW_PS_STATE_RF_ON_92E, align 4
  %139 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %140 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %142 = load i32, i32* @COMP_POWER, align 4
  %143 = load i32, i32* @DBG_LOUD, align 4
  %144 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %145 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @RT_TRACE(%struct.rtl_priv* %141, i32 %142, i32 %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %134, %129
  br label %149

149:                                              ; preds = %148, %93
  %150 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %151 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = call i32 @spin_lock_bh(i32* %152)
  %154 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %155 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %154, i32 0, i32 0
  store i32 0, i32* %155, align 4
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %157 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = call i32 @spin_unlock_bh(i32* %158)
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %149
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %164 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i64, i64* @jiffies, align 8
  %167 = call i64 @MSECS(i32 10)
  %168 = add nsw i64 %166, %167
  %169 = call i32 @mod_timer(i32* %165, i64 %168)
  br label %170

170:                                              ; preds = %162, %149
  br label %182

171:                                              ; preds = %87
  %172 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %173 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = call i32 @spin_lock_bh(i32* %174)
  %176 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %177 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %176, i32 0, i32 0
  store i32 0, i32* %177, align 4
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %179 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = call i32 @spin_unlock_bh(i32* %180)
  br label %182

182:                                              ; preds = %34, %41, %68, %171, %170
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @IS_IN_LOW_POWER_STATE_92E(i32) #1

declare dso_local i64 @FW_PS_IS_ACK(i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @MSECS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
