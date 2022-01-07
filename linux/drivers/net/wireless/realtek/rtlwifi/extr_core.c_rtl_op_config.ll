; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.rtl_priv = type { %struct.TYPE_11__, %struct.TYPE_17__*, %struct.TYPE_10__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.rtl_phy }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.rtl_phy = type { i32, i8* }
%struct.rtl_mac = type { i64, i32, i32, i8*, i8*, i64, i32, i32, i32, i64 }
%struct.rtl_ps_ctl = type { i64 }

@IEEE80211_CONF_CHANGE_LISTEN_INTERVAL = common dso_local global i32 0, align 4
@COMP_MAC80211 = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"IEEE80211_CONF_CHANGE_LISTEN_INTERVAL\0A\00", align 1
@IEEE80211_CONF_CHANGE_IDLE = common dso_local global i32 0, align 4
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@ERFOFF = common dso_local global i64 0, align 8
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_RETRY_LIMITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"IEEE80211_CONF_CHANGE_RETRY_LIMITS %x\0A\00", align 1
@HW_VAR_RETRY_LIMIT = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80 = common dso_local global i32 0, align 4
@MAC80211_LINKED = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_80 = common dso_local global i8* null, align 8
@PRIME_CHNL_OFFSET_LOWER = common dso_local global i8* null, align 8
@PRIME_CHNL_OFFSET_UPPER = common dso_local global i8* null, align 8
@PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i8* null, align 8
@HT_CHANNEL_WIDTH_20 = common dso_local global i8* null, align 8
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @rtl_op_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_op_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_phy*, align 8
  %8 = alloca %struct.rtl_mac*, align 8
  %9 = alloca %struct.rtl_ps_ctl*, align 8
  %10 = alloca %struct.ieee80211_conf*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %6, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 7
  store %struct.rtl_phy* %20, %struct.rtl_phy** %7, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %22)
  store %struct.rtl_mac* %23, %struct.rtl_mac** %8, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  %26 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %25)
  store %struct.rtl_ps_ctl* %26, %struct.rtl_ps_ctl** %9, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  store %struct.ieee80211_conf* %28, %struct.ieee80211_conf** %10, align 8
  %29 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %30 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %449

34:                                               ; preds = %2
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @IEEE80211_CONF_CHANGE_LISTEN_INTERVAL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %45 = load i32, i32* @COMP_MAC80211, align 4
  %46 = load i32, i32* @DBG_LOUD, align 4
  %47 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %34
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @IEEE80211_CONF_CHANGE_IDLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %63 = call i32 @rtl_ips_nic_off(%struct.ieee80211_hw* %62)
  br label %67

64:                                               ; preds = %53
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %66 = call i32 @rtl_ips_nic_on(%struct.ieee80211_hw* %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %81

68:                                               ; preds = %48
  %69 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %70 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ERFOFF, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %79 = call i32 @rtl_ips_nic_on(%struct.ieee80211_hw* %78)
  br label %80

80:                                               ; preds = %77, %68
  br label %81

81:                                               ; preds = %80, %67
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %140

86:                                               ; preds = %81
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %88 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %140

92:                                               ; preds = %86
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %94 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %140, label %98

98:                                               ; preds = %92
  %99 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %100 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = call i32 @cancel_delayed_work(i32* %101)
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %104 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = call i32 @cancel_delayed_work(i32* %105)
  %107 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %108 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %98
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %115 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %118 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %113
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %124 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %128 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = call i32 @MSECS(i32 5)
  %131 = call i32 @queue_delayed_work(i32 %126, i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %122, %113
  br label %139

133:                                              ; preds = %98
  %134 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %135 = call i32 @rtl_swlps_rf_awake(%struct.ieee80211_hw* %134)
  %136 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %137 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %133, %132
  br label %140

140:                                              ; preds = %139, %92, %86, %81
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %183

145:                                              ; preds = %140
  %146 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %147 = load i32, i32* @COMP_MAC80211, align 4
  %148 = load i32, i32* @DBG_LOUD, align 4
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %150 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %146, i32 %147, i32 %148, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, -1
  br i1 %155, label %156, label %182

156:                                              ; preds = %145
  %157 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %158 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %162 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %161, i32 0, i32 8
  store i32 %160, i32* %162, align 8
  %163 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %164 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %168 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %167, i32 0, i32 7
  store i32 %166, i32* %168, align 4
  %169 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %170 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %169, i32 0, i32 1
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 4
  %175 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %174, align 8
  %176 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %177 = load i32, i32* @HW_VAR_RETRY_LIMIT, align 4
  %178 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %179 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %179, i32 0, i32 2
  %181 = call i32 %175(%struct.ieee80211_hw* %176, i32 %177, i32* %180)
  br label %182

182:                                              ; preds = %156, %145
  br label %183

183:                                              ; preds = %182, %140
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %444

188:                                              ; preds = %183
  %189 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %190 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %444, label %194

194:                                              ; preds = %188
  %195 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %196 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  %199 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %198, align 8
  store %struct.ieee80211_channel* %199, %struct.ieee80211_channel** %11, align 8
  %200 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %201 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %12, align 4
  store i32 128, i32* %13, align 4
  %205 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %206 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* @NL80211_CHAN_WIDTH_80, align 4
  %210 = icmp ult i32 %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %194
  %212 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %213 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %213, i32 0, i32 1
  %215 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_18__* %214)
  store i32 %215, i32* %13, align 4
  br label %216

216:                                              ; preds = %211, %194
  %217 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %218 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %217, i32 0, i32 5
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %223 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %221, %216
  %227 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %228 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %263

232:                                              ; preds = %226
  %233 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %234 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @MAC80211_LINKED, align 8
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %238, label %263

238:                                              ; preds = %232
  %239 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %240 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %263, label %243

243:                                              ; preds = %238
  %244 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %245 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %244, i32 0, i32 1
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 3
  %250 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %249, align 8
  %251 = icmp ne i32 (%struct.ieee80211_hw*)* %250, null
  br i1 %251, label %252, label %262

252:                                              ; preds = %243
  %253 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %254 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %253, i32 0, i32 1
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 3
  %259 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %258, align 8
  %260 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %261 = call i32 %259(%struct.ieee80211_hw* %260)
  br label %262

262:                                              ; preds = %252, %243
  br label %263

263:                                              ; preds = %262, %238, %232, %226
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* @NL80211_CHAN_WIDTH_80, align 4
  %266 = icmp uge i32 %264, %265
  br i1 %266, label %267, label %350

267:                                              ; preds = %263
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* @NL80211_CHAN_WIDTH_80, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %349

271:                                              ; preds = %267
  %272 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %273 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %15, align 4
  %277 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %278 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 2
  %281 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %280, align 8
  %282 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %16, align 4
  %284 = load i8*, i8** @HT_CHANNEL_WIDTH_80, align 8
  %285 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %286 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %285, i32 0, i32 1
  store i8* %284, i8** %286, align 8
  %287 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %288 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %287, i32 0, i32 1
  store i32 1, i32* %288, align 8
  %289 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %290 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %289, i32 0, i32 2
  store i32 1, i32* %290, align 4
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %16, align 4
  %293 = icmp sgt i32 %291, %292
  br i1 %293, label %294, label %321

294:                                              ; preds = %271
  %295 = load i8*, i8** @PRIME_CHNL_OFFSET_LOWER, align 8
  %296 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %297 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %296, i32 0, i32 4
  store i8* %295, i8** %297, align 8
  %298 = load i32, i32* %15, align 4
  %299 = load i32, i32* %16, align 4
  %300 = sub nsw i32 %298, %299
  %301 = icmp eq i32 %300, 10
  br i1 %301, label %302, label %308

302:                                              ; preds = %294
  %303 = load i8*, i8** @PRIME_CHNL_OFFSET_UPPER, align 8
  %304 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %305 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %304, i32 0, i32 3
  store i8* %303, i8** %305, align 8
  %306 = load i32, i32* %14, align 4
  %307 = add nsw i32 %306, 2
  store i32 %307, i32* %14, align 4
  br label %320

308:                                              ; preds = %294
  %309 = load i32, i32* %15, align 4
  %310 = load i32, i32* %16, align 4
  %311 = sub nsw i32 %309, %310
  %312 = icmp eq i32 %311, 30
  br i1 %312, label %313, label %319

313:                                              ; preds = %308
  %314 = load i8*, i8** @PRIME_CHNL_OFFSET_LOWER, align 8
  %315 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %316 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %315, i32 0, i32 3
  store i8* %314, i8** %316, align 8
  %317 = load i32, i32* %14, align 4
  %318 = add nsw i32 %317, 6
  store i32 %318, i32* %14, align 4
  br label %319

319:                                              ; preds = %313, %308
  br label %320

320:                                              ; preds = %319, %302
  br label %348

321:                                              ; preds = %271
  %322 = load i8*, i8** @PRIME_CHNL_OFFSET_UPPER, align 8
  %323 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %324 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %323, i32 0, i32 4
  store i8* %322, i8** %324, align 8
  %325 = load i32, i32* %16, align 4
  %326 = load i32, i32* %15, align 4
  %327 = sub nsw i32 %325, %326
  %328 = icmp eq i32 %327, 10
  br i1 %328, label %329, label %335

329:                                              ; preds = %321
  %330 = load i8*, i8** @PRIME_CHNL_OFFSET_LOWER, align 8
  %331 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %332 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %331, i32 0, i32 3
  store i8* %330, i8** %332, align 8
  %333 = load i32, i32* %14, align 4
  %334 = sub nsw i32 %333, 2
  store i32 %334, i32* %14, align 4
  br label %347

335:                                              ; preds = %321
  %336 = load i32, i32* %16, align 4
  %337 = load i32, i32* %15, align 4
  %338 = sub nsw i32 %336, %337
  %339 = icmp eq i32 %338, 30
  br i1 %339, label %340, label %346

340:                                              ; preds = %335
  %341 = load i8*, i8** @PRIME_CHNL_OFFSET_UPPER, align 8
  %342 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %343 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %342, i32 0, i32 3
  store i8* %341, i8** %343, align 8
  %344 = load i32, i32* %14, align 4
  %345 = sub nsw i32 %344, 6
  store i32 %345, i32* %14, align 4
  br label %346

346:                                              ; preds = %340, %335
  br label %347

347:                                              ; preds = %346, %329
  br label %348

348:                                              ; preds = %347, %320
  br label %349

349:                                              ; preds = %348, %267
  br label %397

350:                                              ; preds = %263
  %351 = load i32, i32* %13, align 4
  switch i32 %351, label %389 [
    i32 131, label %352
    i32 128, label %352
    i32 130, label %363
    i32 129, label %376
  ]

352:                                              ; preds = %350, %350
  %353 = load i8*, i8** @PRIME_CHNL_OFFSET_DONT_CARE, align 8
  %354 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %355 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %354, i32 0, i32 3
  store i8* %353, i8** %355, align 8
  %356 = load i8*, i8** @HT_CHANNEL_WIDTH_20, align 8
  %357 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %358 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %357, i32 0, i32 1
  store i8* %356, i8** %358, align 8
  %359 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %360 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %359, i32 0, i32 2
  store i32 0, i32* %360, align 4
  %361 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %362 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %361, i32 0, i32 1
  store i32 0, i32* %362, align 8
  br label %396

363:                                              ; preds = %350
  %364 = load i8*, i8** @PRIME_CHNL_OFFSET_UPPER, align 8
  %365 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %366 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %365, i32 0, i32 3
  store i8* %364, i8** %366, align 8
  %367 = load i8*, i8** @HT_CHANNEL_WIDTH_20_40, align 8
  %368 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %369 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %368, i32 0, i32 1
  store i8* %367, i8** %369, align 8
  %370 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %371 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %370, i32 0, i32 2
  store i32 1, i32* %371, align 4
  %372 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %373 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %372, i32 0, i32 1
  store i32 0, i32* %373, align 8
  %374 = load i32, i32* %14, align 4
  %375 = sub nsw i32 %374, 2
  store i32 %375, i32* %14, align 4
  br label %396

376:                                              ; preds = %350
  %377 = load i8*, i8** @PRIME_CHNL_OFFSET_LOWER, align 8
  %378 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %379 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %378, i32 0, i32 3
  store i8* %377, i8** %379, align 8
  %380 = load i8*, i8** @HT_CHANNEL_WIDTH_20_40, align 8
  %381 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %382 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %381, i32 0, i32 1
  store i8* %380, i8** %382, align 8
  %383 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %384 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %383, i32 0, i32 2
  store i32 1, i32* %384, align 4
  %385 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %386 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %385, i32 0, i32 1
  store i32 0, i32* %386, align 8
  %387 = load i32, i32* %14, align 4
  %388 = add nsw i32 %387, 2
  store i32 %388, i32* %14, align 4
  br label %396

389:                                              ; preds = %350
  %390 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %391 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %390, i32 0, i32 2
  store i32 0, i32* %391, align 4
  %392 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %393 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %392, i32 0, i32 1
  store i32 0, i32* %393, align 8
  %394 = load i32, i32* %13, align 4
  %395 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %394)
  br label %396

396:                                              ; preds = %389, %376, %363, %352
  br label %397

397:                                              ; preds = %396, %349
  %398 = load i32, i32* %14, align 4
  %399 = icmp sle i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  store i32 1, i32* %14, align 4
  br label %401

401:                                              ; preds = %400, %397
  %402 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %403 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %412

407:                                              ; preds = %401
  %408 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %409 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 0
  store i32 0, i32* %410, align 8
  %411 = call i32 @mdelay(i32 50)
  br label %412

412:                                              ; preds = %407, %401
  %413 = load i32, i32* %14, align 4
  %414 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %415 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %414, i32 0, i32 0
  store i32 %413, i32* %415, align 8
  %416 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %417 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %416, i32 0, i32 1
  %418 = load %struct.TYPE_17__*, %struct.TYPE_17__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %418, i32 0, i32 0
  %420 = load %struct.TYPE_16__*, %struct.TYPE_16__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %420, i32 0, i32 2
  %422 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %421, align 8
  %423 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %424 = call i32 %422(%struct.ieee80211_hw* %423)
  %425 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %426 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %425, i32 0, i32 1
  %427 = load %struct.TYPE_17__*, %struct.TYPE_17__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %427, i32 0, i32 0
  %429 = load %struct.TYPE_16__*, %struct.TYPE_16__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %429, i32 0, i32 1
  %431 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %430, align 8
  %432 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %433 = call i32 %431(%struct.ieee80211_hw* %432)
  %434 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %435 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %434, i32 0, i32 1
  %436 = load %struct.TYPE_17__*, %struct.TYPE_17__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %436, i32 0, i32 0
  %438 = load %struct.TYPE_16__*, %struct.TYPE_16__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %438, i32 0, i32 0
  %440 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %439, align 8
  %441 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %442 = load i32, i32* %13, align 4
  %443 = call i32 %440(%struct.ieee80211_hw* %441, i32 %442)
  br label %444

444:                                              ; preds = %412, %188, %183
  %445 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %446 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %446, i32 0, i32 0
  %448 = call i32 @mutex_unlock(i32* %447)
  store i32 0, i32* %3, align 4
  br label %449

449:                                              ; preds = %444, %33
  %450 = load i32, i32* %3, align 4
  ret i32 %450
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_ips_nic_off(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_ips_nic_on(%struct.ieee80211_hw*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @MSECS(i32) #1

declare dso_local i32 @rtl_swlps_rf_awake(%struct.ieee80211_hw*) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_18__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
