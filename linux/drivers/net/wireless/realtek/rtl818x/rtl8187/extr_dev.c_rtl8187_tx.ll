; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_tx_info = type { i32, %struct.urb**, i32, %struct.TYPE_5__ }
%struct.urb = type { i32, %struct.rtl8187_priv* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.rtl8187_tx_hdr = type { i8*, i8*, i64, i8* }
%struct.rtl8187b_tx_hdr = type { i32, i8*, i8*, i8* }
%struct.ieee80211_rate = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_NO_ENC = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_MOREFRAG = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_RTS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_CTS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@__const.rtl8187_tx.epmap = private unnamed_addr constant [4 x i32] [i32 6, i32 7, i32 5, i32 4], align 16
@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@rtl8187_tx_cb = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @rtl8187_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rtl8187_priv*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.urb*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rtl8187_tx_hdr*, align 8
  %17 = alloca [4 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca %struct.rtl8187b_tx_hdr*, align 8
  %20 = alloca %struct.ieee80211_rate*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 1
  %23 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %22, align 8
  store %struct.rtl8187_priv* %23, %struct.rtl8187_priv** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %24)
  store %struct.ieee80211_tx_info* %25, %struct.ieee80211_tx_info** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %29, %struct.ieee80211_hdr** %9, align 8
  store i8* null, i8** %13, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %30)
  store %struct.urb* %31, %struct.urb** %12, align 8
  %32 = load %struct.urb*, %struct.urb** %12, align 8
  %33 = icmp ne %struct.urb* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @kfree_skb(%struct.sk_buff* %35)
  br label %312

37:                                               ; preds = %3
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @RTL818X_TX_DESC_FLAG_NO_ENC, align 4
  %42 = load i32, i32* %14, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %14, align 4
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %45 = bitcast %struct.ieee80211_hw* %44 to %struct.urb*
  %46 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %47 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.urb* %45, %struct.ieee80211_tx_info* %46)
  %48 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 24
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ieee80211_has_morefrags(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = load i32, i32* @RTL818X_TX_DESC_FLAG_MOREFRAG, align 4
  %60 = load i32, i32* %14, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %58, %37
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %62
  %74 = load i32, i32* @RTL818X_TX_DESC_FLAG_RTS, align 4
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %14, align 4
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %78 = bitcast %struct.ieee80211_hw* %77 to %struct.urb*
  %79 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %80 = call %struct.TYPE_6__* @ieee80211_get_rts_cts_rate(%struct.urb* %78, %struct.ieee80211_tx_info* %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 19
  %84 = load i32, i32* %14, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %14, align 4
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %87 = bitcast %struct.ieee80211_hw* %86 to %struct.urb*
  %88 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %89 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %95 = call i8* @ieee80211_rts_duration(%struct.urb* %87, i32 %90, i32 %93, %struct.ieee80211_tx_info* %94)
  store i8* %95, i8** %13, align 8
  br label %133

96:                                               ; preds = %62
  %97 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %96
  %108 = load i32, i32* @RTL818X_TX_DESC_FLAG_RTS, align 4
  %109 = load i32, i32* @RTL818X_TX_DESC_FLAG_CTS, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %14, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %14, align 4
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %114 = bitcast %struct.ieee80211_hw* %113 to %struct.urb*
  %115 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %116 = call %struct.TYPE_6__* @ieee80211_get_rts_cts_rate(%struct.urb* %114, %struct.ieee80211_tx_info* %115)
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 19
  %120 = load i32, i32* %14, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %14, align 4
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %123 = bitcast %struct.ieee80211_hw* %122 to %struct.urb*
  %124 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %125 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %131 = call i8* @ieee80211_ctstoself_duration(%struct.urb* %123, i32 %126, i32 %129, %struct.ieee80211_tx_info* %130)
  store i8* %131, i8** %13, align 8
  br label %132

132:                                              ; preds = %107, %96
  br label %133

133:                                              ; preds = %132, %73
  %134 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %135 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %167

140:                                              ; preds = %133
  %141 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %142 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %140
  %148 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %149 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 16
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %147, %140
  %153 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %154 = call i32 @cpu_to_le16(i32 %153)
  %155 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %156 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %160 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @cpu_to_le16(i32 %161)
  %163 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %164 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %152, %133
  %168 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %169 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %199, label %172

172:                                              ; preds = %167
  %173 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %174 = call i8* @skb_push(%struct.sk_buff* %173, i32 32)
  %175 = bitcast i8* %174 to %struct.rtl8187_tx_hdr*
  store %struct.rtl8187_tx_hdr* %175, %struct.rtl8187_tx_hdr** %16, align 8
  %176 = load i32, i32* %14, align 4
  %177 = call i8* @cpu_to_le32(i32 %176)
  %178 = load %struct.rtl8187_tx_hdr*, %struct.rtl8187_tx_hdr** %16, align 8
  %179 = getelementptr inbounds %struct.rtl8187_tx_hdr, %struct.rtl8187_tx_hdr* %178, i32 0, i32 3
  store i8* %177, i8** %179, align 8
  %180 = load %struct.rtl8187_tx_hdr*, %struct.rtl8187_tx_hdr** %16, align 8
  %181 = getelementptr inbounds %struct.rtl8187_tx_hdr, %struct.rtl8187_tx_hdr* %180, i32 0, i32 2
  store i64 0, i64* %181, align 8
  %182 = load i8*, i8** %13, align 8
  %183 = load %struct.rtl8187_tx_hdr*, %struct.rtl8187_tx_hdr** %16, align 8
  %184 = getelementptr inbounds %struct.rtl8187_tx_hdr, %struct.rtl8187_tx_hdr* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  %185 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %186 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %191, 1
  %193 = shl i32 %192, 8
  %194 = call i8* @cpu_to_le32(i32 %193)
  %195 = load %struct.rtl8187_tx_hdr*, %struct.rtl8187_tx_hdr** %16, align 8
  %196 = getelementptr inbounds %struct.rtl8187_tx_hdr, %struct.rtl8187_tx_hdr* %195, i32 0, i32 0
  store i8* %194, i8** %196, align 8
  %197 = load %struct.rtl8187_tx_hdr*, %struct.rtl8187_tx_hdr** %16, align 8
  %198 = bitcast %struct.rtl8187_tx_hdr* %197 to i8*
  store i8* %198, i8** %11, align 8
  store i32 2, i32* %10, align 4
  br label %262

199:                                              ; preds = %167
  %200 = bitcast [4 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %200, i8* align 16 bitcast ([4 x i32]* @__const.rtl8187_tx.epmap to i8*), i64 16, i1 false)
  %201 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %202 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @le16_to_cpu(i32 %203)
  store i32 %204, i32* %18, align 4
  %205 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %206 = call i8* @skb_push(%struct.sk_buff* %205, i32 32)
  %207 = bitcast i8* %206 to %struct.rtl8187b_tx_hdr*
  store %struct.rtl8187b_tx_hdr* %207, %struct.rtl8187b_tx_hdr** %19, align 8
  %208 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %209 = bitcast %struct.ieee80211_hw* %208 to %struct.urb*
  %210 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %211 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.urb* %209, %struct.ieee80211_tx_info* %210)
  store %struct.ieee80211_rate* %211, %struct.ieee80211_rate** %20, align 8
  %212 = load %struct.rtl8187b_tx_hdr*, %struct.rtl8187b_tx_hdr** %19, align 8
  %213 = call i32 @memset(%struct.rtl8187b_tx_hdr* %212, i32 0, i32 32)
  %214 = load i32, i32* %14, align 4
  %215 = call i8* @cpu_to_le32(i32 %214)
  %216 = load %struct.rtl8187b_tx_hdr*, %struct.rtl8187b_tx_hdr** %19, align 8
  %217 = getelementptr inbounds %struct.rtl8187b_tx_hdr, %struct.rtl8187b_tx_hdr* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  %218 = load i8*, i8** %13, align 8
  %219 = load %struct.rtl8187b_tx_hdr*, %struct.rtl8187b_tx_hdr** %19, align 8
  %220 = getelementptr inbounds %struct.rtl8187b_tx_hdr, %struct.rtl8187b_tx_hdr* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  %221 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %222 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %227, 1
  %229 = shl i32 %228, 8
  %230 = call i8* @cpu_to_le32(i32 %229)
  %231 = load %struct.rtl8187b_tx_hdr*, %struct.rtl8187b_tx_hdr** %19, align 8
  %232 = getelementptr inbounds %struct.rtl8187b_tx_hdr, %struct.rtl8187b_tx_hdr* %231, i32 0, i32 1
  store i8* %230, i8** %232, align 8
  %233 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %234 = bitcast %struct.ieee80211_hw* %233 to %struct.urb*
  %235 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %236 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %239 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %242 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %20, align 8
  %245 = call i32 @ieee80211_generic_frame_duration(%struct.urb* %234, i32 %237, i32 %240, i32 %243, %struct.ieee80211_rate* %244)
  %246 = load %struct.rtl8187b_tx_hdr*, %struct.rtl8187b_tx_hdr** %19, align 8
  %247 = getelementptr inbounds %struct.rtl8187b_tx_hdr, %struct.rtl8187b_tx_hdr* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load %struct.rtl8187b_tx_hdr*, %struct.rtl8187b_tx_hdr** %19, align 8
  %249 = bitcast %struct.rtl8187b_tx_hdr* %248 to i8*
  store i8* %249, i8** %11, align 8
  %250 = load i32, i32* %18, align 4
  %251 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %252 = and i32 %250, %251
  %253 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %199
  store i32 12, i32* %10, align 4
  br label %261

256:                                              ; preds = %199
  %257 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %258 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %257)
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %10, align 4
  br label %261

261:                                              ; preds = %256, %255
  br label %262

262:                                              ; preds = %261, %172
  %263 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %264 = bitcast %struct.ieee80211_hw* %263 to %struct.urb*
  %265 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %266 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %265, i32 0, i32 1
  %267 = load %struct.urb**, %struct.urb*** %266, align 8
  %268 = getelementptr inbounds %struct.urb*, %struct.urb** %267, i64 0
  store %struct.urb* %264, %struct.urb** %268, align 8
  %269 = load %struct.urb*, %struct.urb** %12, align 8
  %270 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %271 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %270, i32 0, i32 1
  %272 = load %struct.urb**, %struct.urb*** %271, align 8
  %273 = getelementptr inbounds %struct.urb*, %struct.urb** %272, i64 1
  store %struct.urb* %269, %struct.urb** %273, align 8
  %274 = load %struct.urb*, %struct.urb** %12, align 8
  %275 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %276 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %279 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %10, align 4
  %282 = call i32 @usb_sndbulkpipe(i32 %280, i32 %281)
  %283 = load i8*, i8** %11, align 8
  %284 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %285 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @rtl8187_tx_cb, align 4
  %288 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %289 = call i32 @usb_fill_bulk_urb(%struct.urb* %274, i32 %277, i32 %282, i8* %283, i32 %286, i32 %287, %struct.sk_buff* %288)
  %290 = load i32, i32* @URB_ZERO_PACKET, align 4
  %291 = load %struct.urb*, %struct.urb** %12, align 8
  %292 = getelementptr inbounds %struct.urb, %struct.urb* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  %295 = load %struct.urb*, %struct.urb** %12, align 8
  %296 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %297 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %296, i32 0, i32 1
  %298 = call i32 @usb_anchor_urb(%struct.urb* %295, i32* %297)
  %299 = load %struct.urb*, %struct.urb** %12, align 8
  %300 = load i32, i32* @GFP_ATOMIC, align 4
  %301 = call i32 @usb_submit_urb(%struct.urb* %299, i32 %300)
  store i32 %301, i32* %15, align 4
  %302 = load i32, i32* %15, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %262
  %305 = load %struct.urb*, %struct.urb** %12, align 8
  %306 = call i32 @usb_unanchor_urb(%struct.urb* %305)
  %307 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %308 = call i32 @kfree_skb(%struct.sk_buff* %307)
  br label %309

309:                                              ; preds = %304, %262
  %310 = load %struct.urb*, %struct.urb** %12, align 8
  %311 = call i32 @usb_free_urb(%struct.urb* %310)
  br label %312

312:                                              ; preds = %309, %34
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.urb*, %struct.ieee80211_tx_info*) #1

declare dso_local i64 @ieee80211_has_morefrags(i32) #1

declare dso_local %struct.TYPE_6__* @ieee80211_get_rts_cts_rate(%struct.urb*, %struct.ieee80211_tx_info*) #1

declare dso_local i8* @ieee80211_rts_duration(%struct.urb*, i32, i32, %struct.ieee80211_tx_info*) #1

declare dso_local i8* @ieee80211_ctstoself_duration(%struct.urb*, i32, i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.rtl8187b_tx_hdr*, i32, i32) #1

declare dso_local i32 @ieee80211_generic_frame_duration(%struct.urb*, i32, i32, i32, %struct.ieee80211_rate*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
