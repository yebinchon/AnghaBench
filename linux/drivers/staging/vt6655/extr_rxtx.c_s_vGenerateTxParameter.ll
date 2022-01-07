; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_vGenerateTxParameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_vGenerateTxParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i16 }
%struct.vnt_tx_fifo_head = type { i32, i32 }
%struct.vnt_rrv_time_rts = type { i8*, i8*, i8*, i8*, i8* }
%struct.vnt_rrv_time_cts = type { i8*, i8*, i8* }
%struct.vnt_rrv_time_ab = type { i8*, i8* }

@AUTO_FB_NONE = common dso_local global i8 0, align 1
@FIFOCTL_CRCDIS = common dso_local global i32 0, align 4
@FIFOCTL_AUTO_FB_0 = common dso_local global i32 0, align 4
@AUTO_FB_0 = common dso_local global i8 0, align 1
@FIFOCTL_AUTO_FB_1 = common dso_local global i32 0, align 4
@AUTO_FB_1 = common dso_local global i8 0, align 1
@PK_TYPE_11GB = common dso_local global i8 0, align 1
@PK_TYPE_11GA = common dso_local global i8 0, align 1
@PK_TYPE_11B = common dso_local global i8 0, align 1
@PK_TYPE_11A = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_private*, i8, %struct.vnt_tx_fifo_head*, i8*, i8*, i8*, i32, i32, i32, i8*, i16)* @s_vGenerateTxParameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_vGenerateTxParameter(%struct.vnt_private* %0, i8 zeroext %1, %struct.vnt_tx_fifo_head* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7, i32 %8, i8* %9, i16 zeroext %10) #0 {
  %12 = alloca %struct.vnt_private*, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.vnt_tx_fifo_head*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i16, align 2
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca %struct.vnt_rrv_time_rts*, align 8
  %27 = alloca %struct.vnt_rrv_time_cts*, align 8
  %28 = alloca %struct.vnt_rrv_time_ab*, align 8
  %29 = alloca %struct.vnt_rrv_time_ab*, align 8
  %30 = alloca %struct.vnt_rrv_time_ab*, align 8
  %31 = alloca %struct.vnt_rrv_time_ab*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %12, align 8
  store i8 %1, i8* %13, align 1
  store %struct.vnt_tx_fifo_head* %2, %struct.vnt_tx_fifo_head** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  store i16 %10, i16* %22, align 2
  %32 = load %struct.vnt_tx_fifo_head*, %struct.vnt_tx_fifo_head** %14, align 8
  %33 = getelementptr inbounds %struct.vnt_tx_fifo_head, %struct.vnt_tx_fifo_head* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  store i32 %35, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %36 = load i8, i8* @AUTO_FB_NONE, align 1
  store i8 %36, i8* %25, align 1
  %37 = load i16, i16* %22, align 2
  %38 = call i32 @cpu_to_le16(i16 zeroext %37)
  %39 = load %struct.vnt_tx_fifo_head*, %struct.vnt_tx_fifo_head** %14, align 8
  %40 = getelementptr inbounds %struct.vnt_tx_fifo_head, %struct.vnt_tx_fifo_head* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %23, align 4
  %42 = load i32, i32* @FIFOCTL_CRCDIS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %11
  store i32 1, i32* %24, align 4
  br label %46

46:                                               ; preds = %45, %11
  %47 = load i32, i32* %23, align 4
  %48 = load i32, i32* @FIFOCTL_AUTO_FB_0, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8, i8* @AUTO_FB_0, align 1
  store i8 %52, i8* %25, align 1
  br label %61

53:                                               ; preds = %46
  %54 = load i32, i32* %23, align 4
  %55 = load i32, i32* @FIFOCTL_AUTO_FB_1, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i8, i8* @AUTO_FB_1, align 1
  store i8 %59, i8* %25, align 1
  br label %60

60:                                               ; preds = %58, %53
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i8*, i8** %15, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %275

65:                                               ; preds = %61
  %66 = load i8, i8* %13, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @PK_TYPE_11GB, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i8, i8* %13, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* @PK_TYPE_11GA, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %171

77:                                               ; preds = %71, %65
  %78 = load i8*, i8** %16, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %132

80:                                               ; preds = %77
  %81 = load i8*, i8** %15, align 8
  %82 = bitcast i8* %81 to %struct.vnt_rrv_time_rts*
  store %struct.vnt_rrv_time_rts* %82, %struct.vnt_rrv_time_rts** %26, align 8
  %83 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %84 = load i8, i8* %13, align 1
  %85 = load i32, i32* %18, align 4
  %86 = load i16, i16* %22, align 2
  %87 = call i8* @s_uGetRTSCTSRsvTime(%struct.vnt_private* %83, i32 2, i8 zeroext %84, i32 %85, i16 zeroext %86)
  %88 = load %struct.vnt_rrv_time_rts*, %struct.vnt_rrv_time_rts** %26, align 8
  %89 = getelementptr inbounds %struct.vnt_rrv_time_rts, %struct.vnt_rrv_time_rts* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %91 = load i8, i8* %13, align 1
  %92 = load i32, i32* %18, align 4
  %93 = load i16, i16* %22, align 2
  %94 = call i8* @s_uGetRTSCTSRsvTime(%struct.vnt_private* %90, i32 1, i8 zeroext %91, i32 %92, i16 zeroext %93)
  %95 = load %struct.vnt_rrv_time_rts*, %struct.vnt_rrv_time_rts** %26, align 8
  %96 = getelementptr inbounds %struct.vnt_rrv_time_rts, %struct.vnt_rrv_time_rts* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %98 = load i8, i8* %13, align 1
  %99 = load i32, i32* %18, align 4
  %100 = load i16, i16* %22, align 2
  %101 = call i8* @s_uGetRTSCTSRsvTime(%struct.vnt_private* %97, i32 0, i8 zeroext %98, i32 %99, i16 zeroext %100)
  %102 = load %struct.vnt_rrv_time_rts*, %struct.vnt_rrv_time_rts** %26, align 8
  %103 = getelementptr inbounds %struct.vnt_rrv_time_rts, %struct.vnt_rrv_time_rts* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %105 = load i8, i8* %13, align 1
  %106 = load i32, i32* %18, align 4
  %107 = load i16, i16* %22, align 2
  %108 = load i32, i32* %19, align 4
  %109 = call i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %104, i8 zeroext %105, i32 %106, i16 zeroext %107, i32 %108)
  %110 = load %struct.vnt_rrv_time_rts*, %struct.vnt_rrv_time_rts** %26, align 8
  %111 = getelementptr inbounds %struct.vnt_rrv_time_rts, %struct.vnt_rrv_time_rts* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %113 = load i8, i8* @PK_TYPE_11B, align 1
  %114 = load i32, i32* %18, align 4
  %115 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %116 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %115, i32 0, i32 0
  %117 = load i16, i16* %116, align 2
  %118 = load i32, i32* %19, align 4
  %119 = call i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %112, i8 zeroext %113, i32 %114, i16 zeroext %117, i32 %118)
  %120 = load %struct.vnt_rrv_time_rts*, %struct.vnt_rrv_time_rts** %26, align 8
  %121 = getelementptr inbounds %struct.vnt_rrv_time_rts, %struct.vnt_rrv_time_rts* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %123 = load i8, i8* %13, align 1
  %124 = load i8*, i8** %16, align 8
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %24, align 4
  %128 = load i8*, i8** %21, align 8
  %129 = load i16, i16* %22, align 2
  %130 = load i8, i8* %25, align 1
  %131 = call i32 @s_vFillRTSHead(%struct.vnt_private* %122, i8 zeroext %123, i8* %124, i32 %125, i32 %126, i32 %127, i8* %128, i16 zeroext %129, i8 zeroext %130)
  br label %170

132:                                              ; preds = %77
  %133 = load i8*, i8** %15, align 8
  %134 = bitcast i8* %133 to %struct.vnt_rrv_time_cts*
  store %struct.vnt_rrv_time_cts* %134, %struct.vnt_rrv_time_cts** %27, align 8
  %135 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %136 = load i8, i8* %13, align 1
  %137 = load i32, i32* %18, align 4
  %138 = load i16, i16* %22, align 2
  %139 = load i32, i32* %19, align 4
  %140 = call i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %135, i8 zeroext %136, i32 %137, i16 zeroext %138, i32 %139)
  %141 = load %struct.vnt_rrv_time_cts*, %struct.vnt_rrv_time_cts** %27, align 8
  %142 = getelementptr inbounds %struct.vnt_rrv_time_cts, %struct.vnt_rrv_time_cts* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  %143 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %144 = load i8, i8* @PK_TYPE_11B, align 1
  %145 = load i32, i32* %18, align 4
  %146 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %147 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %146, i32 0, i32 0
  %148 = load i16, i16* %147, align 2
  %149 = load i32, i32* %19, align 4
  %150 = call i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %143, i8 zeroext %144, i32 %145, i16 zeroext %148, i32 %149)
  %151 = load %struct.vnt_rrv_time_cts*, %struct.vnt_rrv_time_cts** %27, align 8
  %152 = getelementptr inbounds %struct.vnt_rrv_time_cts, %struct.vnt_rrv_time_cts* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %154 = load i8, i8* %13, align 1
  %155 = load i32, i32* %18, align 4
  %156 = load i16, i16* %22, align 2
  %157 = call i8* @s_uGetRTSCTSRsvTime(%struct.vnt_private* %153, i32 3, i8 zeroext %154, i32 %155, i16 zeroext %156)
  %158 = load %struct.vnt_rrv_time_cts*, %struct.vnt_rrv_time_cts** %27, align 8
  %159 = getelementptr inbounds %struct.vnt_rrv_time_cts, %struct.vnt_rrv_time_cts* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %161 = load i32, i32* %20, align 4
  %162 = load i8, i8* %13, align 1
  %163 = load i8*, i8** %17, align 8
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %24, align 4
  %167 = load i16, i16* %22, align 2
  %168 = load i8, i8* %25, align 1
  %169 = call i32 @s_vFillCTSHead(%struct.vnt_private* %160, i32 %161, i8 zeroext %162, i8* %163, i32 %164, i32 %165, i32 %166, i16 zeroext %167, i8 zeroext %168)
  br label %170

170:                                              ; preds = %132, %80
  br label %275

171:                                              ; preds = %71
  %172 = load i8, i8* %13, align 1
  %173 = zext i8 %172 to i32
  %174 = load i8, i8* @PK_TYPE_11A, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %177, label %224

177:                                              ; preds = %171
  %178 = load i8*, i8** %16, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %208

180:                                              ; preds = %177
  %181 = load i8*, i8** %15, align 8
  %182 = bitcast i8* %181 to %struct.vnt_rrv_time_ab*
  store %struct.vnt_rrv_time_ab* %182, %struct.vnt_rrv_time_ab** %28, align 8
  %183 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %184 = load i8, i8* %13, align 1
  %185 = load i32, i32* %18, align 4
  %186 = load i16, i16* %22, align 2
  %187 = call i8* @s_uGetRTSCTSRsvTime(%struct.vnt_private* %183, i32 2, i8 zeroext %184, i32 %185, i16 zeroext %186)
  %188 = load %struct.vnt_rrv_time_ab*, %struct.vnt_rrv_time_ab** %28, align 8
  %189 = getelementptr inbounds %struct.vnt_rrv_time_ab, %struct.vnt_rrv_time_ab* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %191 = load i8, i8* %13, align 1
  %192 = load i32, i32* %18, align 4
  %193 = load i16, i16* %22, align 2
  %194 = load i32, i32* %19, align 4
  %195 = call i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %190, i8 zeroext %191, i32 %192, i16 zeroext %193, i32 %194)
  %196 = load %struct.vnt_rrv_time_ab*, %struct.vnt_rrv_time_ab** %28, align 8
  %197 = getelementptr inbounds %struct.vnt_rrv_time_ab, %struct.vnt_rrv_time_ab* %196, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  %198 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %199 = load i8, i8* %13, align 1
  %200 = load i8*, i8** %16, align 8
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* %24, align 4
  %204 = load i8*, i8** %21, align 8
  %205 = load i16, i16* %22, align 2
  %206 = load i8, i8* %25, align 1
  %207 = call i32 @s_vFillRTSHead(%struct.vnt_private* %198, i8 zeroext %199, i8* %200, i32 %201, i32 %202, i32 %203, i8* %204, i16 zeroext %205, i8 zeroext %206)
  br label %223

208:                                              ; preds = %177
  %209 = load i8*, i8** %16, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %222, label %211

211:                                              ; preds = %208
  %212 = load i8*, i8** %15, align 8
  %213 = bitcast i8* %212 to %struct.vnt_rrv_time_ab*
  store %struct.vnt_rrv_time_ab* %213, %struct.vnt_rrv_time_ab** %29, align 8
  %214 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %215 = load i8, i8* @PK_TYPE_11A, align 1
  %216 = load i32, i32* %18, align 4
  %217 = load i16, i16* %22, align 2
  %218 = load i32, i32* %19, align 4
  %219 = call i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %214, i8 zeroext %215, i32 %216, i16 zeroext %217, i32 %218)
  %220 = load %struct.vnt_rrv_time_ab*, %struct.vnt_rrv_time_ab** %29, align 8
  %221 = getelementptr inbounds %struct.vnt_rrv_time_ab, %struct.vnt_rrv_time_ab* %220, i32 0, i32 0
  store i8* %219, i8** %221, align 8
  br label %222

222:                                              ; preds = %211, %208
  br label %223

223:                                              ; preds = %222, %180
  br label %274

224:                                              ; preds = %171
  %225 = load i8, i8* %13, align 1
  %226 = zext i8 %225 to i32
  %227 = load i8, i8* @PK_TYPE_11B, align 1
  %228 = zext i8 %227 to i32
  %229 = icmp eq i32 %226, %228
  br i1 %229, label %230, label %273

230:                                              ; preds = %224
  %231 = load i8*, i8** %16, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %261

233:                                              ; preds = %230
  %234 = load i8*, i8** %15, align 8
  %235 = bitcast i8* %234 to %struct.vnt_rrv_time_ab*
  store %struct.vnt_rrv_time_ab* %235, %struct.vnt_rrv_time_ab** %30, align 8
  %236 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %237 = load i8, i8* %13, align 1
  %238 = load i32, i32* %18, align 4
  %239 = load i16, i16* %22, align 2
  %240 = call i8* @s_uGetRTSCTSRsvTime(%struct.vnt_private* %236, i32 0, i8 zeroext %237, i32 %238, i16 zeroext %239)
  %241 = load %struct.vnt_rrv_time_ab*, %struct.vnt_rrv_time_ab** %30, align 8
  %242 = getelementptr inbounds %struct.vnt_rrv_time_ab, %struct.vnt_rrv_time_ab* %241, i32 0, i32 1
  store i8* %240, i8** %242, align 8
  %243 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %244 = load i8, i8* @PK_TYPE_11B, align 1
  %245 = load i32, i32* %18, align 4
  %246 = load i16, i16* %22, align 2
  %247 = load i32, i32* %19, align 4
  %248 = call i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %243, i8 zeroext %244, i32 %245, i16 zeroext %246, i32 %247)
  %249 = load %struct.vnt_rrv_time_ab*, %struct.vnt_rrv_time_ab** %30, align 8
  %250 = getelementptr inbounds %struct.vnt_rrv_time_ab, %struct.vnt_rrv_time_ab* %249, i32 0, i32 0
  store i8* %248, i8** %250, align 8
  %251 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %252 = load i8, i8* %13, align 1
  %253 = load i8*, i8** %16, align 8
  %254 = load i32, i32* %18, align 4
  %255 = load i32, i32* %19, align 4
  %256 = load i32, i32* %24, align 4
  %257 = load i8*, i8** %21, align 8
  %258 = load i16, i16* %22, align 2
  %259 = load i8, i8* %25, align 1
  %260 = call i32 @s_vFillRTSHead(%struct.vnt_private* %251, i8 zeroext %252, i8* %253, i32 %254, i32 %255, i32 %256, i8* %257, i16 zeroext %258, i8 zeroext %259)
  br label %272

261:                                              ; preds = %230
  %262 = load i8*, i8** %15, align 8
  %263 = bitcast i8* %262 to %struct.vnt_rrv_time_ab*
  store %struct.vnt_rrv_time_ab* %263, %struct.vnt_rrv_time_ab** %31, align 8
  %264 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %265 = load i8, i8* @PK_TYPE_11B, align 1
  %266 = load i32, i32* %18, align 4
  %267 = load i16, i16* %22, align 2
  %268 = load i32, i32* %19, align 4
  %269 = call i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private* %264, i8 zeroext %265, i32 %266, i16 zeroext %267, i32 %268)
  %270 = load %struct.vnt_rrv_time_ab*, %struct.vnt_rrv_time_ab** %31, align 8
  %271 = getelementptr inbounds %struct.vnt_rrv_time_ab, %struct.vnt_rrv_time_ab* %270, i32 0, i32 0
  store i8* %269, i8** %271, align 8
  br label %272

272:                                              ; preds = %261, %233
  br label %273

273:                                              ; preds = %272, %224
  br label %274

274:                                              ; preds = %273, %223
  br label %275

275:                                              ; preds = %64, %274, %170
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i16 zeroext) #1

declare dso_local i8* @s_uGetRTSCTSRsvTime(%struct.vnt_private*, i32, i8 zeroext, i32, i16 zeroext) #1

declare dso_local i8* @vnt_rxtx_rsvtime_le16(%struct.vnt_private*, i8 zeroext, i32, i16 zeroext, i32) #1

declare dso_local i32 @s_vFillRTSHead(%struct.vnt_private*, i8 zeroext, i8*, i32, i32, i32, i8*, i16 zeroext, i8 zeroext) #1

declare dso_local i32 @s_vFillCTSHead(%struct.vnt_private*, i32, i8 zeroext, i8*, i32, i32, i32, i16 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
