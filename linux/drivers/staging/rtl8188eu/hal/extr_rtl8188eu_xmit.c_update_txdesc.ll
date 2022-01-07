; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_xmit.c_update_txdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_xmit.c_update_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmit_frame = type { i64, i32, i32, i64, %struct.pkt_attrib, %struct.adapter* }
%struct.pkt_attrib = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32 }
%struct.adapter = type { %struct.TYPE_4__, %struct.mlme_ext_priv, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64 }
%struct.TYPE_3__ = type { %struct.odm_dm_struct }
%struct.odm_dm_struct = type { i32 }
%struct.tx_desc = type { i32, i32, i32, i32, i32, i32, i32 }

@PACKET_OFFSET_SZ = common dso_local global i32 0, align 4
@OWN = common dso_local global i32 0, align 4
@FSG = common dso_local global i32 0, align 4
@LSG = common dso_local global i32 0, align 4
@TXDESC_SIZE = common dso_local global i32 0, align 4
@OFFSET_SZ = common dso_local global i32 0, align 4
@OFFSET_SHT = common dso_local global i32 0, align 4
@BMC = common dso_local global i32 0, align 4
@USERATE = common dso_local global i32 0, align 4
@DATA_FRAMETAG = common dso_local global i32 0, align 4
@QSEL_SHT = common dso_local global i32 0, align 4
@RATE_ID_SHT = common dso_local global i32 0, align 4
@AGG_EN = common dso_local global i32 0, align 4
@AGG_BK = common dso_local global i32 0, align 4
@SEQ_SHT = common dso_local global i32 0, align 4
@QOS = common dso_local global i32 0, align 4
@USB_TXAGG_NUM_SHT = common dso_local global i32 0, align 4
@SGI = common dso_local global i32 0, align 4
@PWR_STATUS_SHT = common dso_local global i32 0, align 4
@PREAMBLE_SHORT = common dso_local global i64 0, align 8
@MGNT_FRAMETAG = common dso_local global i32 0, align 4
@RTY_LMT_EN = common dso_local global i32 0, align 4
@TXAGG_FRAMETAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"pxmitframe->frame_tag == TXAGG_FRAMETAG\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"pxmitframe->frame_tag = %d\0A\00", align 1
@EN_HWSEQ = common dso_local global i32 0, align 4
@HW_SSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xmit_frame*, i32*, i32, i32)* @update_txdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_txdesc(%struct.xmit_frame* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xmit_frame*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.adapter*, align 8
  %15 = alloca %struct.pkt_attrib*, align 8
  %16 = alloca %struct.odm_dm_struct*, align 8
  %17 = alloca %struct.tx_desc*, align 8
  %18 = alloca %struct.mlme_ext_priv*, align 8
  %19 = alloca %struct.mlme_ext_info*, align 8
  store %struct.xmit_frame* %0, %struct.xmit_frame** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %21 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %20, i32 0, i32 5
  %22 = load %struct.adapter*, %struct.adapter** %21, align 8
  store %struct.adapter* %22, %struct.adapter** %14, align 8
  %23 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %24 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %23, i32 0, i32 4
  store %struct.pkt_attrib* %24, %struct.pkt_attrib** %15, align 8
  %25 = load %struct.adapter*, %struct.adapter** %14, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.odm_dm_struct* %28, %struct.odm_dm_struct** %16, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = bitcast i32* %29 to %struct.tx_desc*
  store %struct.tx_desc* %30, %struct.tx_desc** %17, align 8
  %31 = load %struct.adapter*, %struct.adapter** %14, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 1
  store %struct.mlme_ext_priv* %32, %struct.mlme_ext_priv** %18, align 8
  %33 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %18, align 8
  %34 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %33, i32 0, i32 1
  store %struct.mlme_ext_info* %34, %struct.mlme_ext_info** %19, align 8
  %35 = load %struct.adapter*, %struct.adapter** %14, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = load %struct.adapter*, %struct.adapter** %14, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @urb_zero_packet_chk(%struct.adapter* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @PACKET_OFFSET_SZ, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = bitcast i32* %52 to %struct.tx_desc*
  store %struct.tx_desc* %53, %struct.tx_desc** %17, align 8
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %43, %40
  br label %55

55:                                               ; preds = %54, %4
  %56 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %57 = call i32 @memset(%struct.tx_desc* %56, i32 0, i32 28)
  %58 = load i32, i32* @OWN, align 4
  %59 = load i32, i32* @FSG, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @LSG, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %65 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 65535
  %70 = call i32 @cpu_to_le32(i32 %69)
  %71 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %72 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @TXDESC_SIZE, align 4
  %76 = load i32, i32* @OFFSET_SZ, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @OFFSET_SHT, align 4
  %80 = shl i32 %78, %79
  %81 = and i32 %80, 16711680
  %82 = call i32 @cpu_to_le32(i32 %81)
  %83 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %84 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %88 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @is_multicast_ether_addr(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %55
  %93 = load i32, i32* @BMC, align 4
  %94 = call i32 @cpu_to_le32(i32 %93)
  %95 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %96 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %92, %55
  %100 = load %struct.adapter*, %struct.adapter** %14, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %113 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %118 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %119, 1
  %121 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %122 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %116, %111, %108
  br label %124

124:                                              ; preds = %123, %105
  br label %125

125:                                              ; preds = %124, %99
  %126 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %127 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %132 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = shl i64 %133, 26
  %135 = and i64 %134, 2080374784
  %136 = trunc i64 %135 to i32
  %137 = call i32 @cpu_to_le32(i32 %136)
  %138 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %139 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %130, %125
  %143 = load i32, i32* @USERATE, align 4
  %144 = call i32 @cpu_to_le32(i32 %143)
  %145 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %146 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %150 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, 15
  %153 = load i32, i32* @DATA_FRAMETAG, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %368

155:                                              ; preds = %142
  %156 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %157 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, 63
  %160 = call i32 @cpu_to_le32(i32 %159)
  %161 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %162 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %166 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 31
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @QSEL_SHT, align 4
  %171 = shl i32 %169, %170
  %172 = and i32 %171, 7936
  %173 = call i32 @cpu_to_le32(i32 %172)
  %174 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %175 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %179 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @RATE_ID_SHT, align 4
  %182 = shl i32 %180, %181
  %183 = and i32 %182, 983040
  %184 = call i32 @cpu_to_le32(i32 %183)
  %185 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %186 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %190 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %191 = call i32 @fill_txdesc_sectype(%struct.pkt_attrib* %189, %struct.tx_desc* %190)
  %192 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %193 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %192, i32 0, i32 9
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %155
  %197 = load i32, i32* @AGG_EN, align 4
  %198 = call i32 @cpu_to_le32(i32 %197)
  %199 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %200 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  %203 = call i32 @cpu_to_le32(i32 1718024192)
  %204 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %205 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 4
  br label %213

206:                                              ; preds = %155
  %207 = load i32, i32* @AGG_BK, align 4
  %208 = call i32 @cpu_to_le32(i32 %207)
  %209 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %210 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %206, %196
  %214 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %215 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @SEQ_SHT, align 4
  %218 = shl i32 %216, %217
  %219 = and i32 %218, 268369920
  %220 = call i32 @cpu_to_le32(i32 %219)
  %221 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %222 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  %225 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %226 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %213
  %230 = load i32, i32* @QOS, align 4
  %231 = call i32 @cpu_to_le32(i32 %230)
  %232 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %233 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %229, %213
  %237 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %238 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = icmp sgt i32 %239, 1
  br i1 %240, label %241, label %253

241:                                              ; preds = %236
  %242 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %243 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @USB_TXAGG_NUM_SHT, align 4
  %246 = shl i32 %244, %245
  %247 = and i32 %246, -16777216
  %248 = call i32 @cpu_to_le32(i32 %247)
  %249 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %250 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %241, %236
  %254 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %255 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 34958
  br i1 %257, label %258, label %338

258:                                              ; preds = %253
  %259 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %260 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 2054
  br i1 %262, label %263, label %338

263:                                              ; preds = %258
  %264 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %265 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 34996
  br i1 %267, label %268, label %338

268:                                              ; preds = %263
  %269 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %270 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 1
  br i1 %272, label %273, label %338

273:                                              ; preds = %268
  %274 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %275 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %276 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %275, i32 0, i32 0
  %277 = call i32 @fill_txdesc_vcs(%struct.pkt_attrib* %274, i32* %276)
  %278 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %279 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %280 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %279, i32 0, i32 0
  %281 = call i32 @fill_txdesc_phy(%struct.pkt_attrib* %278, i32* %280)
  %282 = call i32 @cpu_to_le32(i32 8)
  %283 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %284 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  %287 = call i32 @cpu_to_le32(i32 130816)
  %288 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %289 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 4
  %292 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %293 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %292, i32 0, i32 8
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %311

296:                                              ; preds = %273
  %297 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %16, align 8
  %298 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %299 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = call i64 @ODM_RA_GetShortGI_8188E(%struct.odm_dm_struct* %297, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %296
  %304 = load i32, i32* @SGI, align 4
  %305 = call i32 @cpu_to_le32(i32 %304)
  %306 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %307 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %303, %296
  br label %311

311:                                              ; preds = %310, %273
  %312 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %16, align 8
  %313 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %314 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @ODM_RA_GetDecisionRate_8188E(%struct.odm_dm_struct* %312, i32 %315)
  store i32 %316, i32* %11, align 4
  %317 = load i32, i32* %11, align 4
  %318 = and i32 %317, 63
  %319 = call i32 @cpu_to_le32(i32 %318)
  %320 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %321 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 4
  %324 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %16, align 8
  %325 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %326 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @ODM_RA_GetHwPwrStatus_8188E(%struct.odm_dm_struct* %324, i32 %327)
  store i32 %328, i32* %12, align 4
  %329 = load i32, i32* %12, align 4
  %330 = and i32 %329, 7
  %331 = load i32, i32* @PWR_STATUS_SHT, align 4
  %332 = shl i32 %330, %331
  %333 = call i32 @cpu_to_le32(i32 %332)
  %334 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %335 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = or i32 %336, %333
  store i32 %337, i32* %335, align 4
  br label %367

338:                                              ; preds = %268, %263, %258, %253
  %339 = load i32, i32* @AGG_BK, align 4
  %340 = call i32 @cpu_to_le32(i32 %339)
  %341 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %342 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 4
  %345 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %19, align 8
  %346 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @PREAMBLE_SHORT, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %357

350:                                              ; preds = %338
  %351 = call i32 @BIT(i32 24)
  %352 = call i32 @cpu_to_le32(i32 %351)
  %353 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %354 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 4
  br label %357

357:                                              ; preds = %350, %338
  %358 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %18, align 8
  %359 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @MRateToHwRate(i32 %360)
  %362 = call i32 @cpu_to_le32(i32 %361)
  %363 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %364 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = or i32 %365, %362
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %357, %311
  br label %513

368:                                              ; preds = %142
  %369 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %370 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = and i32 %371, 15
  %373 = load i32, i32* @MGNT_FRAMETAG, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %464

375:                                              ; preds = %368
  %376 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %377 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = and i32 %378, 63
  %380 = call i32 @cpu_to_le32(i32 %379)
  %381 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %382 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  %384 = or i32 %383, %380
  store i32 %384, i32* %382, align 4
  %385 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %386 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = and i32 %387, 31
  store i32 %388, i32* %10, align 4
  %389 = load i32, i32* %10, align 4
  %390 = load i32, i32* @QSEL_SHT, align 4
  %391 = shl i32 %389, %390
  %392 = and i32 %391, 7936
  %393 = call i32 @cpu_to_le32(i32 %392)
  %394 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %395 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = or i32 %396, %393
  store i32 %397, i32* %395, align 4
  %398 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %399 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @RATE_ID_SHT, align 4
  %402 = shl i32 %400, %401
  %403 = and i32 %402, 983040
  %404 = call i32 @cpu_to_le32(i32 %403)
  %405 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %406 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = or i32 %407, %404
  store i32 %408, i32* %406, align 4
  %409 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %410 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %409, i32 0, i32 3
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %420

413:                                              ; preds = %375
  %414 = call i32 @BIT(i32 19)
  %415 = call i32 @cpu_to_le32(i32 %414)
  %416 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %417 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 4
  %419 = or i32 %418, %415
  store i32 %419, i32* %417, align 4
  br label %420

420:                                              ; preds = %413, %375
  %421 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %422 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @SEQ_SHT, align 4
  %425 = shl i32 %423, %424
  %426 = and i32 %425, 268369920
  %427 = call i32 @cpu_to_le32(i32 %426)
  %428 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %429 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = or i32 %430, %427
  store i32 %431, i32* %429, align 4
  %432 = load i32, i32* @RTY_LMT_EN, align 4
  %433 = call i32 @cpu_to_le32(i32 %432)
  %434 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %435 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 4
  %437 = or i32 %436, %433
  store i32 %437, i32* %435, align 4
  %438 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %439 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %438, i32 0, i32 7
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %448

442:                                              ; preds = %420
  %443 = call i32 @cpu_to_le32(i32 1572864)
  %444 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %445 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 4
  %447 = or i32 %446, %443
  store i32 %447, i32* %445, align 4
  br label %454

448:                                              ; preds = %420
  %449 = call i32 @cpu_to_le32(i32 3145728)
  %450 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %451 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 4
  %453 = or i32 %452, %449
  store i32 %453, i32* %451, align 4
  br label %454

454:                                              ; preds = %448, %442
  %455 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %18, align 8
  %456 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = call i32 @MRateToHwRate(i32 %457)
  %459 = call i32 @cpu_to_le32(i32 %458)
  %460 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %461 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 4
  %463 = or i32 %462, %459
  store i32 %463, i32* %461, align 4
  br label %512

464:                                              ; preds = %368
  %465 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %466 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 8
  %468 = and i32 %467, 15
  %469 = load i32, i32* @TXAGG_FRAMETAG, align 4
  %470 = icmp eq i32 %468, %469
  br i1 %470, label %471, label %473

471:                                              ; preds = %464
  %472 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %511

473:                                              ; preds = %464
  %474 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %475 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 8
  %477 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %476)
  %478 = call i32 @cpu_to_le32(i32 4)
  %479 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %480 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %479, i32 0, i32 3
  %481 = load i32, i32* %480, align 4
  %482 = or i32 %481, %478
  store i32 %482, i32* %480, align 4
  %483 = load i32, i32* @RATE_ID_SHT, align 4
  %484 = shl i32 6, %483
  %485 = and i32 %484, 983040
  %486 = call i32 @cpu_to_le32(i32 %485)
  %487 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %488 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %487, i32 0, i32 3
  %489 = load i32, i32* %488, align 4
  %490 = or i32 %489, %486
  store i32 %490, i32* %488, align 4
  %491 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %492 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %491, i32 0, i32 3
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* @SEQ_SHT, align 4
  %495 = shl i32 %493, %494
  %496 = and i32 %495, 268369920
  %497 = call i32 @cpu_to_le32(i32 %496)
  %498 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %499 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 4
  %501 = or i32 %500, %497
  store i32 %501, i32* %499, align 4
  %502 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %18, align 8
  %503 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = call i32 @MRateToHwRate(i32 %504)
  %506 = call i32 @cpu_to_le32(i32 %505)
  %507 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %508 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 4
  %510 = or i32 %509, %506
  store i32 %510, i32* %508, align 4
  br label %511

511:                                              ; preds = %473, %471
  br label %512

512:                                              ; preds = %511, %454
  br label %513

513:                                              ; preds = %512, %367
  %514 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %515 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %514, i32 0, i32 6
  %516 = load i64, i64* %515, align 8
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %531, label %518

518:                                              ; preds = %513
  %519 = load i32, i32* @EN_HWSEQ, align 4
  %520 = call i32 @cpu_to_le32(i32 %519)
  %521 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %522 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = or i32 %523, %520
  store i32 %524, i32* %522, align 4
  %525 = load i32, i32* @HW_SSN, align 4
  %526 = call i32 @cpu_to_le32(i32 %525)
  %527 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %528 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 4
  %530 = or i32 %529, %526
  store i32 %530, i32* %528, align 4
  br label %531

531:                                              ; preds = %518, %513
  %532 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %16, align 8
  %533 = load i32*, i32** %6, align 8
  %534 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %535 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = call i32 @rtl88eu_dm_set_tx_ant_by_tx_info(%struct.odm_dm_struct* %532, i32* %533, i32 %536)
  %538 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %539 = call i32 @rtl8188eu_cal_txdesc_chksum(%struct.tx_desc* %538)
  %540 = load %struct.adapter*, %struct.adapter** %14, align 8
  %541 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %542 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 8
  %544 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %545 = call i32 @_dbg_dump_tx_info(%struct.adapter* %540, i32 %543, %struct.tx_desc* %544)
  %546 = load i32, i32* %9, align 4
  ret i32 %546
}

declare dso_local i64 @urb_zero_packet_chk(%struct.adapter*, i32) #1

declare dso_local i32 @memset(%struct.tx_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @fill_txdesc_sectype(%struct.pkt_attrib*, %struct.tx_desc*) #1

declare dso_local i32 @fill_txdesc_vcs(%struct.pkt_attrib*, i32*) #1

declare dso_local i32 @fill_txdesc_phy(%struct.pkt_attrib*, i32*) #1

declare dso_local i64 @ODM_RA_GetShortGI_8188E(%struct.odm_dm_struct*, i32) #1

declare dso_local i32 @ODM_RA_GetDecisionRate_8188E(%struct.odm_dm_struct*, i32) #1

declare dso_local i32 @ODM_RA_GetHwPwrStatus_8188E(%struct.odm_dm_struct*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @MRateToHwRate(i32) #1

declare dso_local i32 @DBG_88E(i8*, ...) #1

declare dso_local i32 @rtl88eu_dm_set_tx_ant_by_tx_info(%struct.odm_dm_struct*, i32*, i32) #1

declare dso_local i32 @rtl8188eu_cal_txdesc_chksum(%struct.tx_desc*) #1

declare dso_local i32 @_dbg_dump_tx_info(%struct.adapter*, i32, %struct.tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
