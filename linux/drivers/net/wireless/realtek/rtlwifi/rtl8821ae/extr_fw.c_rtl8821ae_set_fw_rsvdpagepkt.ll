; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c_rtl8821ae_set_fw_rsvdpagepkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c_rtl8821ae_set_fw_rsvdpagepkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_mac = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@reserved_page_packet_8821 = common dso_local global i32* null, align 8
@BEACON_PG = common dso_local global i32 0, align 4
@PSPOLL_PG = common dso_local global i32 0, align 4
@NULL_PG = common dso_local global i32 0, align 4
@QOSNULL_PG = common dso_local global i32 0, align 4
@BT_QOSNULL_PG = common dso_local global i32 0, align 4
@ARPRESP_PG = common dso_local global i32 0, align 4
@REMOTE_PG = common dso_local global i32 0, align 4
@GTKEXT_PG = common dso_local global i32 0, align 4
@TOTAL_RESERVED_PKT_LEN_8821 = common dso_local global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"rtl8821ae_set_fw_rsvdpagepkt(): packet data\0A\00", align 1
@COMP_POWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Set RSVD page location to Fw.\0A\00", align 1
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"H2C_RSVDPAGE:\0A\00", align 1
@H2C_8821AE_RSVDPAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"wowlan H2C_RSVDPAGE:\0A\00", align 1
@H2C_8821AE_AOAC_RSVDPAGE = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Set RSVD page location to Fw FAIL!!!!!!.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_set_fw_rsvdpagepkt(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_mac*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [5 x i32], align 16
  %13 = alloca [7 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  store %struct.rtl_priv* %22, %struct.rtl_priv** %7, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %24 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %23)
  %25 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %24)
  store %struct.rtl_mac* %25, %struct.rtl_mac** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %26 = bitcast [5 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 20, i1 false)
  %27 = bitcast [7 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 28, i1 false)
  store i32 0, i32* %14, align 4
  %28 = load i32*, i32** @reserved_page_packet_8821, align 8
  %29 = load i32, i32* @BEACON_PG, align 4
  %30 = mul nsw i32 %29, 256
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32* %32, i32** %15, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %35 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SET_80211_HDR_ADDRESS2(i32* %33, i32 %36)
  %38 = load i32*, i32** %15, align 8
  %39 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %40 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SET_80211_HDR_ADDRESS3(i32* %38, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  store i32 216, i32* %10, align 4
  br label %179

46:                                               ; preds = %3
  %47 = load i32*, i32** @reserved_page_packet_8821, align 8
  %48 = load i32, i32* @PSPOLL_PG, align 4
  %49 = mul nsw i32 %48, 256
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32* %51, i32** %16, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %54 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, 49152
  %57 = call i32 @SET_80211_PS_POLL_AID(i32* %52, i32 %56)
  %58 = load i32*, i32** %16, align 8
  %59 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %60 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SET_80211_PS_POLL_BSSID(i32* %58, i32 %61)
  %63 = load i32*, i32** %16, align 8
  %64 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %65 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @SET_80211_PS_POLL_TA(i32* %63, i32 %66)
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %69 = load i32, i32* @PSPOLL_PG, align 4
  %70 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_PSPOLL(i32* %68, i32 %69)
  %71 = load i32*, i32** @reserved_page_packet_8821, align 8
  %72 = load i32, i32* @NULL_PG, align 4
  %73 = mul nsw i32 %72, 256
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32* %75, i32** %17, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %78 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SET_80211_HDR_ADDRESS1(i32* %76, i32 %79)
  %81 = load i32*, i32** %17, align 8
  %82 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %83 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @SET_80211_HDR_ADDRESS2(i32* %81, i32 %84)
  %86 = load i32*, i32** %17, align 8
  %87 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %88 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SET_80211_HDR_ADDRESS3(i32* %86, i32 %89)
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %92 = load i32, i32* @NULL_PG, align 4
  %93 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_NULL_DATA(i32* %91, i32 %92)
  %94 = load i32*, i32** @reserved_page_packet_8821, align 8
  %95 = load i32, i32* @QOSNULL_PG, align 4
  %96 = mul nsw i32 %95, 256
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32* %98, i32** %18, align 8
  %99 = load i32*, i32** %18, align 8
  %100 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %101 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @SET_80211_HDR_ADDRESS1(i32* %99, i32 %102)
  %104 = load i32*, i32** %18, align 8
  %105 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %106 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @SET_80211_HDR_ADDRESS2(i32* %104, i32 %107)
  %109 = load i32*, i32** %18, align 8
  %110 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %111 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @SET_80211_HDR_ADDRESS3(i32* %109, i32 %112)
  %114 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %115 = load i32, i32* @QOSNULL_PG, align 4
  %116 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_QOS_NULL_DATA(i32* %114, i32 %115)
  %117 = load i32*, i32** @reserved_page_packet_8821, align 8
  %118 = load i32, i32* @BT_QOSNULL_PG, align 4
  %119 = mul nsw i32 %118, 256
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32* %121, i32** %19, align 8
  %122 = load i32*, i32** %19, align 8
  %123 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %124 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @SET_80211_HDR_ADDRESS1(i32* %122, i32 %125)
  %127 = load i32*, i32** %19, align 8
  %128 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %129 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @SET_80211_HDR_ADDRESS2(i32* %127, i32 %130)
  %132 = load i32*, i32** %19, align 8
  %133 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %134 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @SET_80211_HDR_ADDRESS3(i32* %132, i32 %135)
  %137 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %138 = load i32, i32* @BT_QOSNULL_PG, align 4
  %139 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_BT_QOS_NULL_DATA(i32* %137, i32 %138)
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %46
  %143 = load i32, i32* @BT_QOSNULL_PG, align 4
  %144 = add nsw i32 %143, 1
  %145 = mul nsw i32 256, %144
  %146 = sub nsw i32 %145, 40
  store i32 %146, i32* %10, align 4
  br label %179

147:                                              ; preds = %46
  %148 = load i32*, i32** @reserved_page_packet_8821, align 8
  %149 = load i32, i32* @ARPRESP_PG, align 4
  %150 = mul nsw i32 %149, 256
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32* %152, i32** %20, align 8
  %153 = load i32*, i32** %20, align 8
  %154 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %155 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @SET_80211_HDR_ADDRESS1(i32* %153, i32 %156)
  %158 = load i32*, i32** %20, align 8
  %159 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %160 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @SET_80211_HDR_ADDRESS2(i32* %158, i32 %161)
  %163 = load i32*, i32** %20, align 8
  %164 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %165 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @SET_80211_HDR_ADDRESS3(i32* %163, i32 %166)
  %168 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %169 = load i32, i32* @ARPRESP_PG, align 4
  %170 = call i32 @SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_ARP_RSP(i32* %168, i32 %169)
  %171 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %172 = load i32, i32* @REMOTE_PG, align 4
  %173 = call i32 @SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_REMOTE_WAKE_CTRL_INFO(i32* %171, i32 %172)
  %174 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %175 = load i32, i32* @GTKEXT_PG, align 4
  %176 = call i32 @SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_EXT_MEM(i32* %174, i32 %175)
  %177 = load i32, i32* @TOTAL_RESERVED_PKT_LEN_8821, align 4
  %178 = sub nsw i32 %177, 40
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %147, %142, %45
  %180 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %181 = load i32, i32* @COMP_CMD, align 4
  %182 = load i32, i32* @DBG_LOUD, align 4
  %183 = load i32*, i32** @reserved_page_packet_8821, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %180, i32 %181, i32 %182, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32* %184, i32 %185)
  %187 = load i32, i32* %10, align 4
  %188 = call %struct.sk_buff* @dev_alloc_skb(i32 %187)
  store %struct.sk_buff* %188, %struct.sk_buff** %9, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %190 = icmp ne %struct.sk_buff* %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %179
  br label %243

192:                                              ; preds = %179
  %193 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @skb_put_data(%struct.sk_buff* %193, i32** @reserved_page_packet_8821, i32 %194)
  %196 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %198 = call i32 @rtl_cmd_send_packet(%struct.ieee80211_hw* %196, %struct.sk_buff* %197)
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %192
  store i32 1, i32* %14, align 4
  br label %202

202:                                              ; preds = %201, %192
  %203 = load i32, i32* %5, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %235, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %235

208:                                              ; preds = %205
  %209 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %210 = load i32, i32* @COMP_POWER, align 4
  %211 = load i32, i32* @DBG_LOUD, align 4
  %212 = call i32 @RT_TRACE(%struct.rtl_priv* %209, i32 %210, i32 %211, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %213 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %214 = load i32, i32* @COMP_CMD, align 4
  %215 = load i32, i32* @DBG_DMESG, align 4
  %216 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %217 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %213, i32 %214, i32 %215, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %216, i32 5)
  %218 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %219 = load i32, i32* @H2C_8821AE_RSVDPAGE, align 4
  %220 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %221 = call i32 @rtl8821ae_fill_h2c_cmd(%struct.ieee80211_hw* %218, i32 %219, i32 20, i32* %220)
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %208
  %225 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %226 = load i32, i32* @COMP_CMD, align 4
  %227 = load i32, i32* @DBG_DMESG, align 4
  %228 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %229 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %225, i32 %226, i32 %227, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %228, i32 7)
  %230 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %231 = load i32, i32* @H2C_8821AE_AOAC_RSVDPAGE, align 4
  %232 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %233 = call i32 @rtl8821ae_fill_h2c_cmd(%struct.ieee80211_hw* %230, i32 %231, i32 28, i32* %232)
  br label %234

234:                                              ; preds = %224, %208
  br label %235

235:                                              ; preds = %234, %205, %202
  %236 = load i32, i32* %14, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %243, label %238

238:                                              ; preds = %235
  %239 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %240 = load i32, i32* @COMP_ERR, align 4
  %241 = load i32, i32* @DBG_WARNING, align 4
  %242 = call i32 @RT_TRACE(%struct.rtl_priv* %239, i32 %240, i32 %241, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %243

243:                                              ; preds = %191, %238, %235
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SET_80211_HDR_ADDRESS2(i32*, i32) #1

declare dso_local i32 @SET_80211_HDR_ADDRESS3(i32*, i32) #1

declare dso_local i32 @SET_80211_PS_POLL_AID(i32*, i32) #1

declare dso_local i32 @SET_80211_PS_POLL_BSSID(i32*, i32) #1

declare dso_local i32 @SET_80211_PS_POLL_TA(i32*, i32) #1

declare dso_local i32 @SET_H2CCMD_RSVDPAGE_LOC_PSPOLL(i32*, i32) #1

declare dso_local i32 @SET_80211_HDR_ADDRESS1(i32*, i32) #1

declare dso_local i32 @SET_H2CCMD_RSVDPAGE_LOC_NULL_DATA(i32*, i32) #1

declare dso_local i32 @SET_H2CCMD_RSVDPAGE_LOC_QOS_NULL_DATA(i32*, i32) #1

declare dso_local i32 @SET_H2CCMD_RSVDPAGE_LOC_BT_QOS_NULL_DATA(i32*, i32) #1

declare dso_local i32 @SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_ARP_RSP(i32*, i32) #1

declare dso_local i32 @SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_REMOTE_WAKE_CTRL_INFO(i32*, i32) #1

declare dso_local i32 @SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_EXT_MEM(i32*, i32) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i32*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32**, i32) #1

declare dso_local i32 @rtl_cmd_send_packet(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl8821ae_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
