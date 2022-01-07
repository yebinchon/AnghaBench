; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_bt_ant_isolation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_bt_ant_isolation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.ieee80211_hw*, i32, i32, i32, i32)* }
%struct.TYPE_7__ = type { i64, i64 }

@PEER_CISCO = common dso_local global i64 0, align 8
@BT_OTHER_ACTION = common dso_local global i64 0, align 8
@REG_GPIO_MUXCFG = common dso_local global i32 0, align 4
@BT_BUSY = common dso_local global i64 0, align 8
@BT_RSSI_STATE_NORMAL_POWER = common dso_local global i32 0, align 4
@WIRELESS_MODE_N_24G = common dso_local global i64 0, align 8
@BT_RSSI_STATE_SPECIAL_LOW = common dso_local global i32 0, align 4
@BT_PAN = common dso_local global i64 0, align 8
@REG_GPIO_PIN_CTRL = common dso_local global i32 0, align 4
@BT_IDLE = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i32 0, align 4
@BT_RSSI_STATE_TXPOWER_LOW = common dso_local global i32 0, align 4
@TXHIGHPWRLEVEL_BT2 = common dso_local global i32 0, align 4
@TXHIGHPWRLEVEL_BT1 = common dso_local global i32 0, align 4
@TXHIGHPWRLEVEL_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl92c_bt_ant_isolation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_bt_ant_isolation(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %5, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PEER_CISCO, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BT_OTHER_ACTION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = load i32, i32* @REG_GPIO_MUXCFG, align 4
  %24 = call i32 @rtl_write_byte(%struct.rtl_priv* %22, i32 %23, i32 160)
  br label %90

25:                                               ; preds = %14, %2
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BT_BUSY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BT_RSSI_STATE_NORMAL_POWER, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %42 = load i32, i32* @REG_GPIO_MUXCFG, align 4
  %43 = call i32 @rtl_write_byte(%struct.rtl_priv* %41, i32 %42, i32 160)
  br label %89

44:                                               ; preds = %32, %25
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %46 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BT_OTHER_ACTION, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %44
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %53 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @WIRELESS_MODE_N_24G, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @BT_RSSI_STATE_SPECIAL_LOW, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %68 = load i32, i32* @REG_GPIO_MUXCFG, align 4
  %69 = call i32 @rtl_write_byte(%struct.rtl_priv* %67, i32 %68, i32 160)
  br label %88

70:                                               ; preds = %58, %51, %44
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @BT_PAN, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %79 = load i32, i32* @REG_GPIO_MUXCFG, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @rtl_write_byte(%struct.rtl_priv* %78, i32 %79, i32 %80)
  br label %87

82:                                               ; preds = %70
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %84 = load i32, i32* @REG_GPIO_MUXCFG, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @rtl_write_byte(%struct.rtl_priv* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %77
  br label %88

88:                                               ; preds = %87, %66
  br label %89

89:                                               ; preds = %88, %40
  br label %90

90:                                               ; preds = %89, %21
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %92 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @BT_PAN, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %99 = load i32, i32* @REG_GPIO_PIN_CTRL, align 4
  %100 = call i32 @rtl_write_dword(%struct.rtl_priv* %98, i32 %99, i32 65792)
  br label %105

101:                                              ; preds = %90
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %103 = load i32, i32* @REG_GPIO_PIN_CTRL, align 4
  %104 = call i32 @rtl_write_dword(%struct.rtl_priv* %102, i32 %103, i32 0)
  br label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %107 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @BT_RSSI_STATE_NORMAL_POWER, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %115 = call i32 @rtl92c_bt_set_normal(%struct.ieee80211_hw* %114)
  br label %123

116:                                              ; preds = %105
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %118 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 4
  store i64 0, i64* %119, align 8
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %121 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %116, %113
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %125 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @BT_IDLE, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %123
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %132 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %131, i32 0, i32 3
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32 (%struct.ieee80211_hw*, i32, i32, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i32, i32, i32)** %136, align 8
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %139 = load i32, i32* @RF90_PATH_A, align 4
  %140 = call i32 %137(%struct.ieee80211_hw* %138, i32 %139, i32 30, i32 240, i32 15)
  br label %156

141:                                              ; preds = %123
  %142 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %143 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %142, i32 0, i32 3
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32 (%struct.ieee80211_hw*, i32, i32, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i32, i32, i32)** %147, align 8
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %150 = load i32, i32* @RF90_PATH_A, align 4
  %151 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %152 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 %148(%struct.ieee80211_hw* %149, i32 %150, i32 30, i32 240, i32 %154)
  br label %156

156:                                              ; preds = %141, %130
  %157 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %158 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %200, label %162

162:                                              ; preds = %156
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %164 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @BT_IDLE, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %188

169:                                              ; preds = %162
  %170 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %171 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @BT_RSSI_STATE_TXPOWER_LOW, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %169
  %178 = load i32, i32* @TXHIGHPWRLEVEL_BT2, align 4
  %179 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %180 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 4
  br label %187

182:                                              ; preds = %169
  %183 = load i32, i32* @TXHIGHPWRLEVEL_BT1, align 4
  %184 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %185 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 4
  br label %187

187:                                              ; preds = %182, %177
  br label %193

188:                                              ; preds = %162
  %189 = load i32, i32* @TXHIGHPWRLEVEL_NORMAL, align 4
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %191 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 4
  br label %193

193:                                              ; preds = %188, %187
  %194 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %195 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %196 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @rtl92c_phy_set_txpower_level(%struct.ieee80211_hw* %194, i32 %198)
  br label %200

200:                                              ; preds = %193, %156
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl92c_bt_set_normal(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_phy_set_txpower_level(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
