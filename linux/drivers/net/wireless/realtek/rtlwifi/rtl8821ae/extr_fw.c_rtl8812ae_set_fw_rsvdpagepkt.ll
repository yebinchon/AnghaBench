; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c_rtl8812ae_set_fw_rsvdpagepkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c_rtl8812ae_set_fw_rsvdpagepkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_mac = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@reserved_page_packet_8812 = common dso_local global i32* null, align 8
@BEACON_PG = common dso_local global i32 0, align 4
@PSPOLL_PG = common dso_local global i32 0, align 4
@NULL_PG = common dso_local global i32 0, align 4
@QOSNULL_PG = common dso_local global i32 0, align 4
@BT_QOSNULL_PG = common dso_local global i32 0, align 4
@ARPRESP_PG = common dso_local global i32 0, align 4
@REMOTE_PG = common dso_local global i32 0, align 4
@GTKEXT_PG = common dso_local global i32 0, align 4
@TOTAL_RESERVED_PKT_LEN_8812 = common dso_local global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"rtl8812ae_set_fw_rsvdpagepkt(): packet data\0A\00", align 1
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"H2C_RSVDPAGE:\0A\00", align 1
@H2C_8821AE_RSVDPAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"wowlan H2C_RSVDPAGE:\0A\00", align 1
@H2C_8821AE_AOAC_RSVDPAGE = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Set RSVD page location to Fw FAIL!!!!!!.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8812ae_set_fw_rsvdpagepkt(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
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
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %24 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %23)
  store %struct.rtl_mac* %24, %struct.rtl_mac** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %25 = bitcast [5 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 20, i1 false)
  %26 = bitcast [7 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 28, i1 false)
  store i32 0, i32* %14, align 4
  %27 = load i32*, i32** @reserved_page_packet_8812, align 8
  %28 = load i32, i32* @BEACON_PG, align 4
  %29 = mul nsw i32 %28, 512
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %34 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SET_80211_HDR_ADDRESS2(i32* %32, i32 %35)
  %37 = load i32*, i32** %15, align 8
  %38 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %39 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SET_80211_HDR_ADDRESS3(i32* %37, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  store i32 472, i32* %10, align 4
  br label %178

45:                                               ; preds = %3
  %46 = load i32*, i32** @reserved_page_packet_8812, align 8
  %47 = load i32, i32* @PSPOLL_PG, align 4
  %48 = mul nsw i32 %47, 512
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32* %50, i32** %16, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %53 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, 49152
  %56 = call i32 @SET_80211_PS_POLL_AID(i32* %51, i32 %55)
  %57 = load i32*, i32** %16, align 8
  %58 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %59 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @SET_80211_PS_POLL_BSSID(i32* %57, i32 %60)
  %62 = load i32*, i32** %16, align 8
  %63 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %64 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SET_80211_PS_POLL_TA(i32* %62, i32 %65)
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %68 = load i32, i32* @PSPOLL_PG, align 4
  %69 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_PSPOLL(i32* %67, i32 %68)
  %70 = load i32*, i32** @reserved_page_packet_8812, align 8
  %71 = load i32, i32* @NULL_PG, align 4
  %72 = mul nsw i32 %71, 512
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32* %74, i32** %17, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %77 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @SET_80211_HDR_ADDRESS1(i32* %75, i32 %78)
  %80 = load i32*, i32** %17, align 8
  %81 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %82 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SET_80211_HDR_ADDRESS2(i32* %80, i32 %83)
  %85 = load i32*, i32** %17, align 8
  %86 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %87 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @SET_80211_HDR_ADDRESS3(i32* %85, i32 %88)
  %90 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %91 = load i32, i32* @NULL_PG, align 4
  %92 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_NULL_DATA(i32* %90, i32 %91)
  %93 = load i32*, i32** @reserved_page_packet_8812, align 8
  %94 = load i32, i32* @QOSNULL_PG, align 4
  %95 = mul nsw i32 %94, 512
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32* %97, i32** %18, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %100 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @SET_80211_HDR_ADDRESS1(i32* %98, i32 %101)
  %103 = load i32*, i32** %18, align 8
  %104 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %105 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @SET_80211_HDR_ADDRESS2(i32* %103, i32 %106)
  %108 = load i32*, i32** %18, align 8
  %109 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %110 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @SET_80211_HDR_ADDRESS3(i32* %108, i32 %111)
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %114 = load i32, i32* @QOSNULL_PG, align 4
  %115 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_QOS_NULL_DATA(i32* %113, i32 %114)
  %116 = load i32*, i32** @reserved_page_packet_8812, align 8
  %117 = load i32, i32* @BT_QOSNULL_PG, align 4
  %118 = mul nsw i32 %117, 512
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32* %120, i32** %19, align 8
  %121 = load i32*, i32** %19, align 8
  %122 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %123 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @SET_80211_HDR_ADDRESS1(i32* %121, i32 %124)
  %126 = load i32*, i32** %19, align 8
  %127 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %128 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @SET_80211_HDR_ADDRESS2(i32* %126, i32 %129)
  %131 = load i32*, i32** %19, align 8
  %132 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %133 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @SET_80211_HDR_ADDRESS3(i32* %131, i32 %134)
  %136 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %137 = load i32, i32* @BT_QOSNULL_PG, align 4
  %138 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_BT_QOS_NULL_DATA(i32* %136, i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %45
  %142 = load i32, i32* @BT_QOSNULL_PG, align 4
  %143 = add nsw i32 %142, 1
  %144 = mul nsw i32 512, %143
  %145 = sub nsw i32 %144, 40
  store i32 %145, i32* %10, align 4
  br label %178

146:                                              ; preds = %45
  %147 = load i32*, i32** @reserved_page_packet_8812, align 8
  %148 = load i32, i32* @ARPRESP_PG, align 4
  %149 = mul nsw i32 %148, 512
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32* %151, i32** %20, align 8
  %152 = load i32*, i32** %20, align 8
  %153 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %154 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @SET_80211_HDR_ADDRESS1(i32* %152, i32 %155)
  %157 = load i32*, i32** %20, align 8
  %158 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %159 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @SET_80211_HDR_ADDRESS2(i32* %157, i32 %160)
  %162 = load i32*, i32** %20, align 8
  %163 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %164 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @SET_80211_HDR_ADDRESS3(i32* %162, i32 %165)
  %167 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %168 = load i32, i32* @ARPRESP_PG, align 4
  %169 = call i32 @SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_ARP_RSP(i32* %167, i32 %168)
  %170 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %171 = load i32, i32* @REMOTE_PG, align 4
  %172 = call i32 @SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_REMOTE_WAKE_CTRL_INFO(i32* %170, i32 %171)
  %173 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %174 = load i32, i32* @GTKEXT_PG, align 4
  %175 = call i32 @SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_EXT_MEM(i32* %173, i32 %174)
  %176 = load i32, i32* @TOTAL_RESERVED_PKT_LEN_8812, align 4
  %177 = sub nsw i32 %176, 40
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %146, %141, %44
  %179 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %180 = load i32, i32* @COMP_CMD, align 4
  %181 = load i32, i32* @DBG_LOUD, align 4
  %182 = load i32*, i32** @reserved_page_packet_8812, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %179, i32 %180, i32 %181, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32* %183, i32 %184)
  %186 = load i32, i32* %10, align 4
  %187 = call %struct.sk_buff* @dev_alloc_skb(i32 %186)
  store %struct.sk_buff* %187, %struct.sk_buff** %9, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %189 = icmp ne %struct.sk_buff* %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %178
  br label %238

191:                                              ; preds = %178
  %192 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @skb_put_data(%struct.sk_buff* %192, i32** @reserved_page_packet_8812, i32 %193)
  %195 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %197 = call i32 @rtl_cmd_send_packet(%struct.ieee80211_hw* %195, %struct.sk_buff* %196)
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  store i32 1, i32* %14, align 4
  br label %201

201:                                              ; preds = %200, %191
  %202 = load i32, i32* %5, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %230, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %230

207:                                              ; preds = %204
  %208 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %209 = load i32, i32* @COMP_CMD, align 4
  %210 = load i32, i32* @DBG_DMESG, align 4
  %211 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %212 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %208, i32 %209, i32 %210, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %211, i32 5)
  %213 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %214 = load i32, i32* @H2C_8821AE_RSVDPAGE, align 4
  %215 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %216 = call i32 @rtl8821ae_fill_h2c_cmd(%struct.ieee80211_hw* %213, i32 %214, i32 20, i32* %215)
  %217 = load i32, i32* %6, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %207
  %220 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %221 = load i32, i32* @COMP_CMD, align 4
  %222 = load i32, i32* @DBG_DMESG, align 4
  %223 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %224 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %220, i32 %221, i32 %222, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %223, i32 7)
  %225 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %226 = load i32, i32* @H2C_8821AE_AOAC_RSVDPAGE, align 4
  %227 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %228 = call i32 @rtl8821ae_fill_h2c_cmd(%struct.ieee80211_hw* %225, i32 %226, i32 28, i32* %227)
  br label %229

229:                                              ; preds = %219, %207
  br label %230

230:                                              ; preds = %229, %204, %201
  %231 = load i32, i32* %14, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %230
  %234 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %235 = load i32, i32* @COMP_ERR, align 4
  %236 = load i32, i32* @DBG_WARNING, align 4
  %237 = call i32 @RT_TRACE(%struct.rtl_priv* %234, i32 %235, i32 %236, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %238

238:                                              ; preds = %190, %233, %230
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

declare dso_local i32 @rtl8821ae_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
