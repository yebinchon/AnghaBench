; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, i32, i32, %struct.TYPE_2__*, i32, i64, %struct.ieee80211_hw* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@RTL818X_RX_CONF_MGMT = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_DATA = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_BROADCAST = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_NICMAC = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_BSSID = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_RX_AUTORESETPHY = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_ONLYERLPKT = common dso_local global i32 0, align 4
@RTL818X_TX_AGC_CTL_PERPACKET_GAIN = common dso_local global i32 0, align 4
@RTL818X_TX_AGC_CTL_PERPACKET_ANTSEL = common dso_local global i32 0, align 4
@RTL818X_TX_AGC_CTL_FEEDBACK_ANT = common dso_local global i32 0, align 4
@RTL818X_TX_CONF_HW_SEQNUM = common dso_local global i32 0, align 4
@RTL818X_TX_CONF_DISREQQSIZE = common dso_local global i32 0, align 4
@RETRY_COUNT = common dso_local global i32 0, align 4
@RTL818X_CW_CONF_PERPACKET_CW = common dso_local global i32 0, align 4
@RTL818X_CW_CONF_PERPACKET_RETRY = common dso_local global i32 0, align 4
@RTL818X_TX_CONF_CW_MIN = common dso_local global i32 0, align 4
@RTL818X_TX_CONF_NO_ICV = common dso_local global i32 0, align 4
@RTL818X_CMD_TX_ENABLE = common dso_local global i32 0, align 4
@RTL818X_CMD_RX_ENABLE = common dso_local global i32 0, align 4
@rtl8187_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8187_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8187_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8187_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  store %struct.rtl8187_priv* %8, %struct.rtl8187_priv** %3, align 8
  %9 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call i32 @rtl8187_init_hw(%struct.ieee80211_hw* %17)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = call i32 @rtl8187b_init_hw(%struct.ieee80211_hw* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %253

27:                                               ; preds = %22
  %28 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %29 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %28, i32 0, i32 4
  %30 = call i32 @init_usb_anchor(i32* %29)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %32 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %33 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %32, i32 0, i32 6
  store %struct.ieee80211_hw* %31, %struct.ieee80211_hw** %33, align 8
  %34 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %35 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %120

38:                                               ; preds = %27
  %39 = load i32, i32* @RTL818X_RX_CONF_MGMT, align 4
  %40 = load i32, i32* @RTL818X_RX_CONF_DATA, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RTL818X_RX_CONF_BROADCAST, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RTL818X_RX_CONF_NICMAC, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RTL818X_RX_CONF_BSSID, align 4
  %47 = or i32 %45, %46
  %48 = or i32 %47, 57344
  %49 = or i32 %48, 7168
  %50 = load i32, i32* @RTL818X_RX_CONF_RX_AUTORESETPHY, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RTL818X_RX_CONF_ONLYERLPKT, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %56 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %58 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %57, i32* %61, i32 %62)
  %64 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %65 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %66 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %64, i32* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @RTL818X_TX_AGC_CTL_PERPACKET_GAIN, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @RTL818X_TX_AGC_CTL_PERPACKET_ANTSEL, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @RTL818X_TX_AGC_CTL_FEEDBACK_ANT, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %83 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %84 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %82, i32* %86, i32 %87)
  %89 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %90 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %91 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* @RTL818X_TX_CONF_HW_SEQNUM, align 4
  %95 = load i32, i32* @RTL818X_TX_CONF_DISREQQSIZE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @RETRY_COUNT, align 4
  %98 = shl i32 %97, 8
  %99 = or i32 %96, %98
  %100 = load i32, i32* @RETRY_COUNT, align 4
  %101 = shl i32 %100, 0
  %102 = or i32 %99, %101
  %103 = or i32 %102, 14680064
  %104 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %89, i32* %93, i32 %103)
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %106 = call i32 @rtl8187_init_urbs(%struct.ieee80211_hw* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %38
  br label %253

110:                                              ; preds = %38
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %112 = call i32 @rtl8187b_init_status_urb(%struct.ieee80211_hw* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %117 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %116, i32 0, i32 4
  %118 = call i32 @usb_kill_anchored_urbs(i32* %117)
  br label %119

119:                                              ; preds = %115, %110
  br label %253

120:                                              ; preds = %27
  %121 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %122 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %123 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %122, i32 0, i32 3
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 6
  %126 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %121, i32* %125, i32 65535)
  %127 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %128 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %129 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %128, i32 0, i32 3
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %127, i32* %133, i32 -1)
  %135 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %136 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %137 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %136, i32 0, i32 3
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %135, i32* %141, i32 -1)
  %143 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %144 = call i32 @rtl8187_init_urbs(%struct.ieee80211_hw* %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %120
  br label %253

148:                                              ; preds = %120
  %149 = load i32, i32* @RTL818X_RX_CONF_ONLYERLPKT, align 4
  %150 = load i32, i32* @RTL818X_RX_CONF_RX_AUTORESETPHY, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @RTL818X_RX_CONF_BSSID, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @RTL818X_RX_CONF_MGMT, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @RTL818X_RX_CONF_DATA, align 4
  %157 = or i32 %155, %156
  %158 = or i32 %157, 57344
  %159 = or i32 %158, 7168
  %160 = load i32, i32* @RTL818X_RX_CONF_BROADCAST, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @RTL818X_RX_CONF_NICMAC, align 4
  %163 = or i32 %161, %162
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %166 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %168 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %169 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %168, i32 0, i32 3
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 4
  %172 = load i32, i32* %4, align 4
  %173 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %167, i32* %171, i32 %172)
  %174 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %175 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %176 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %175, i32 0, i32 3
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 3
  %179 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %174, i32* %178)
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* @RTL818X_CW_CONF_PERPACKET_CW, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %4, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %4, align 4
  %184 = load i32, i32* @RTL818X_CW_CONF_PERPACKET_RETRY, align 4
  %185 = load i32, i32* %4, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %4, align 4
  %187 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %188 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %189 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %188, i32 0, i32 3
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 3
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %187, i32* %191, i32 %192)
  %194 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %195 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %196 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %195, i32 0, i32 3
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %194, i32* %198)
  store i32 %199, i32* %4, align 4
  %200 = load i32, i32* @RTL818X_TX_AGC_CTL_PERPACKET_GAIN, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %4, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* @RTL818X_TX_AGC_CTL_PERPACKET_ANTSEL, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %4, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* @RTL818X_TX_AGC_CTL_FEEDBACK_ANT, align 4
  %209 = xor i32 %208, -1
  %210 = load i32, i32* %4, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %4, align 4
  %212 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %213 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %214 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %213, i32 0, i32 3
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 2
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %212, i32* %216, i32 %217)
  %219 = load i32, i32* @RTL818X_TX_CONF_CW_MIN, align 4
  %220 = or i32 %219, 14680064
  %221 = load i32, i32* @RTL818X_TX_CONF_NO_ICV, align 4
  %222 = or i32 %220, %221
  store i32 %222, i32* %4, align 4
  %223 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %224 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %225 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %224, i32 0, i32 3
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 1
  %228 = load i32, i32* %4, align 4
  %229 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %223, i32* %227, i32 %228)
  %230 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %231 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %232 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %231, i32 0, i32 3
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %230, i32* %234)
  store i32 %235, i32* %4, align 4
  %236 = load i32, i32* @RTL818X_CMD_TX_ENABLE, align 4
  %237 = load i32, i32* %4, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %4, align 4
  %239 = load i32, i32* @RTL818X_CMD_RX_ENABLE, align 4
  %240 = load i32, i32* %4, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %4, align 4
  %242 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %243 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %244 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %243, i32 0, i32 3
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %242, i32* %246, i32 %247)
  %249 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %250 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %249, i32 0, i32 2
  %251 = load i32, i32* @rtl8187_work, align 4
  %252 = call i32 @INIT_DELAYED_WORK(i32* %250, i32 %251)
  br label %253

253:                                              ; preds = %148, %147, %119, %109, %26
  %254 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %255 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %254, i32 0, i32 1
  %256 = call i32 @mutex_unlock(i32* %255)
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtl8187_init_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8187b_init_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl8187_init_urbs(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8187b_init_status_urb(%struct.ieee80211_hw*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
