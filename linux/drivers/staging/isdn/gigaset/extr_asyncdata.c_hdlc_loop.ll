; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_hdlc_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_hdlc_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { i8*, i32, %struct.cardstate* }
%struct.cardstate = type { i32, i64, %struct.bc_state* }
%struct.bc_state = type { i32, i64, i8, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@INS_byte_stuff = common dso_local global i32 0, align 4
@DLE_FLAG = common dso_local global i8 0, align 1
@INS_DLE_char = common dso_local global i32 0, align 4
@INS_DLE_command = common dso_local global i32 0, align 4
@PPP_ESCAPE = common dso_local global i8 0, align 1
@PPP_TRANS = common dso_local global i8 0, align 1
@PPP_FLAG = common dso_local global i8 0, align 1
@INS_have_data = common dso_local global i32 0, align 4
@DEBUG_HDLC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"7e----------------------------\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"short frame (%d)\0A\00", align 1
@PPP_GOODFCS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Checksum failed, %u bytes corrupted!\0A\00", align 1
@PPP_INITFCS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"received packet too long\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inbuf_t*)* @hdlc_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlc_loop(i32 %0, %struct.inbuf_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.inbuf_t*, align 8
  %6 = alloca %struct.cardstate*, align 8
  %7 = alloca %struct.bc_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store %struct.inbuf_t* %1, %struct.inbuf_t** %5, align 8
  %14 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %15 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %14, i32 0, i32 2
  %16 = load %struct.cardstate*, %struct.cardstate** %15, align 8
  store %struct.cardstate* %16, %struct.cardstate** %6, align 8
  %17 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %18 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %17, i32 0, i32 2
  %19 = load %struct.bc_state*, %struct.bc_state** %18, align 8
  store %struct.bc_state* %19, %struct.bc_state** %7, align 8
  %20 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %21 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %24 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %27 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %26, i32 0, i32 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %10, align 8
  %29 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %30 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %33 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  store i8* %36, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @INS_byte_stuff, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %276

45:                                               ; preds = %41
  %46 = load i32, i32* @INS_byte_stuff, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %107

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %267, %233, %50
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %268

55:                                               ; preds = %51
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  %58 = load i8, i8* %56, align 1
  store i8 %58, i8* %13, align 1
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = load i8, i8* %13, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @DLE_FLAG, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %55
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @INS_DLE_char, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* @INS_DLE_char, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %91

76:                                               ; preds = %66
  %77 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %78 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @INS_DLE_command, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81, %76
  %87 = load i32, i32* @INS_DLE_char, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %268

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %55
  %93 = load i8, i8* %13, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* @PPP_ESCAPE, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %153

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp uge i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* @INS_byte_stuff, align 4
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %268

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %45
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %11, align 8
  %110 = load i8, i8* %108, align 1
  store i8 %110, i8* %13, align 1
  %111 = load i32, i32* %12, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %12, align 4
  %113 = load i8, i8* %13, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @DLE_FLAG, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %146

118:                                              ; preds = %107
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @INS_DLE_char, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32, i32* @INS_DLE_char, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %145

128:                                              ; preds = %118
  %129 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %130 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @INS_DLE_command, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133, %128
  %139 = load i32, i32* @INS_DLE_char, align 4
  %140 = load i32, i32* @INS_byte_stuff, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %8, align 4
  br label %268

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144, %123
  br label %146

146:                                              ; preds = %145, %107
  %147 = load i8, i8* @PPP_TRANS, align 1
  %148 = zext i8 %147 to i32
  %149 = load i8, i8* %13, align 1
  %150 = zext i8 %149 to i32
  %151 = xor i32 %150, %148
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %13, align 1
  br label %236

153:                                              ; preds = %92
  %154 = load i8, i8* %13, align 1
  %155 = zext i8 %154 to i32
  %156 = load i8, i8* @PPP_FLAG, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %235

159:                                              ; preds = %153
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @INS_have_data, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %224

164:                                              ; preds = %159
  %165 = load i32, i32* @DEBUG_HDLC, align 4
  %166 = call i32 (i32, i8*, ...) @gig_dbg(i32 %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %167 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %168 = icmp ne %struct.sk_buff* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %164
  %170 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %171 = call i32 @gigaset_isdn_rcv_err(%struct.bc_state* %170)
  br label %217

172:                                              ; preds = %164
  %173 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %175, 2
  br i1 %176, label %177, label %189

177:                                              ; preds = %172
  %178 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %179 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i32, i8*, ...) @dev_warn(i32 %180, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %183)
  %185 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %186 = call i32 @gigaset_isdn_rcv_err(%struct.bc_state* %185)
  %187 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %188 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %187)
  br label %216

189:                                              ; preds = %172
  %190 = load i64, i64* %9, align 8
  %191 = load i64, i64* @PPP_GOODFCS, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %205

193:                                              ; preds = %189
  %194 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %195 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %198 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @dev_err(i32 %196, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %199)
  %201 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %202 = call i32 @gigaset_isdn_rcv_err(%struct.bc_state* %201)
  %203 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %204 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %203)
  br label %215

205:                                              ; preds = %189
  %206 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %208 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %209, 2
  %211 = call i32 @__skb_trim(%struct.sk_buff* %206, i32 %210)
  %212 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %214 = call i32 @gigaset_skb_rcvd(%struct.bc_state* %212, %struct.sk_buff* %213)
  br label %215

215:                                              ; preds = %205, %193
  br label %216

216:                                              ; preds = %215, %177
  br label %217

217:                                              ; preds = %216, %169
  %218 = load i32, i32* @INS_have_data, align 4
  %219 = xor i32 %218, -1
  %220 = load i32, i32* %8, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %8, align 4
  %222 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %223 = call %struct.sk_buff* @gigaset_new_rx_skb(%struct.bc_state* %222)
  store %struct.sk_buff* %223, %struct.sk_buff** %10, align 8
  br label %233

224:                                              ; preds = %159
  %225 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %226 = icmp ne %struct.sk_buff* %225, null
  br i1 %226, label %232, label %227

227:                                              ; preds = %224
  %228 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %229 = call i32 @gigaset_isdn_rcv_err(%struct.bc_state* %228)
  %230 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %231 = call %struct.sk_buff* @gigaset_new_rx_skb(%struct.bc_state* %230)
  store %struct.sk_buff* %231, %struct.sk_buff** %10, align 8
  br label %232

232:                                              ; preds = %227, %224
  br label %233

233:                                              ; preds = %232, %217
  %234 = load i64, i64* @PPP_INITFCS, align 8
  store i64 %234, i64* %9, align 8
  br label %51

235:                                              ; preds = %153
  br label %236

236:                                              ; preds = %235, %146
  %237 = load i32, i32* @INS_have_data, align 4
  %238 = load i32, i32* %8, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %8, align 4
  %240 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %241 = icmp ne %struct.sk_buff* %240, null
  br i1 %241, label %242, label %267

242:                                              ; preds = %236
  %243 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %247 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = icmp sge i32 %245, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %242
  %251 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %252 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 (i32, i8*, ...) @dev_warn(i32 %253, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %255 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %256 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %255)
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %257 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %258 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %257, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %258, align 8
  br label %266

259:                                              ; preds = %242
  %260 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %261 = load i8, i8* %13, align 1
  %262 = call i32 @__skb_put_u8(%struct.sk_buff* %260, i8 zeroext %261)
  %263 = load i64, i64* %9, align 8
  %264 = load i8, i8* %13, align 1
  %265 = call i64 @crc_ccitt_byte(i64 %263, i8 zeroext %264)
  store i64 %265, i64* %9, align 8
  br label %266

266:                                              ; preds = %259, %250
  br label %267

267:                                              ; preds = %266, %236
  br label %51

268:                                              ; preds = %138, %102, %86, %51
  %269 = load i32, i32* %8, align 4
  %270 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %271 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  %272 = load i64, i64* %9, align 8
  %273 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %274 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %273, i32 0, i32 1
  store i64 %272, i64* %274, align 8
  %275 = load i32, i32* %12, align 4
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %268, %44
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local i32 @gigaset_isdn_rcv_err(%struct.bc_state*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @__skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @gigaset_skb_rcvd(%struct.bc_state*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @gigaset_new_rx_skb(%struct.bc_state*) #1

declare dso_local i32 @__skb_put_u8(%struct.sk_buff*, i8 zeroext) #1

declare dso_local i64 @crc_ccitt_byte(i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
