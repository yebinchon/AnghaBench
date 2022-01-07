; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_crypt_ccmp.c_rtllib_ccmp_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_crypt_ccmp.c_rtllib_ccmp_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32*, i64 }
%struct.rtllib_ccmp_data = type { i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.rtllib_hdr_4addr = type { i32 }
%struct.cb_desc = type { i32 }
%struct.aead_request = type { i32 }
%struct.scatterlist = type { i32 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@CCMP_HDR_LEN = common dso_local global i32 0, align 4
@CCMP_MIC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"CCMP: received packet without ExtIV flag from %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"CCMP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"CCMP: received packet from %pM with keyid=%d that does not have a configured key\0A\00", align 1
@CCMP_PN_LEN = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"CCMP: decrypt failed: STA= %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i8*)* @rtllib_ccmp_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_ccmp_decrypt(%struct.sk_buff* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rtllib_ccmp_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rtllib_hdr_4addr*, align 8
  %12 = alloca %struct.cb_desc*, align 8
  %13 = alloca [6 x i32], align 16
  %14 = alloca i64, align 8
  %15 = alloca %struct.aead_request*, align 8
  %16 = alloca [2 x %struct.scatterlist], align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.rtllib_ccmp_data*
  store %struct.rtllib_ccmp_data* %24, %struct.rtllib_ccmp_data** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %29 = add nsw i64 %27, %28
  %30 = inttoptr i64 %29 to %struct.cb_desc*
  store %struct.cb_desc* %30, %struct.cb_desc** %12, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CCMP_HDR_LEN, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @CCMP_MIC_LEN, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = load %struct.rtllib_ccmp_data*, %struct.rtllib_ccmp_data** %8, align 8
  %42 = getelementptr inbounds %struct.rtllib_ccmp_data, %struct.rtllib_ccmp_data* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  store i32 -1, i32* %4, align 4
  br label %254

45:                                               ; preds = %3
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to %struct.rtllib_hdr_4addr*
  store %struct.rtllib_hdr_4addr* %49, %struct.rtllib_hdr_4addr** %11, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %45
  %63 = call i64 (...) @net_ratelimit()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %11, align 8
  %67 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load %struct.rtllib_ccmp_data*, %struct.rtllib_ccmp_data** %8, align 8
  %72 = getelementptr inbounds %struct.rtllib_ccmp_data, %struct.rtllib_ccmp_data* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  store i32 -2, i32* %4, align 4
  br label %254

75:                                               ; preds = %45
  %76 = load i32, i32* %9, align 4
  %77 = ashr i32 %76, 6
  store i32 %77, i32* %9, align 4
  %78 = load %struct.rtllib_ccmp_data*, %struct.rtllib_ccmp_data** %8, align 8
  %79 = getelementptr inbounds %struct.rtllib_ccmp_data, %struct.rtllib_ccmp_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load %struct.rtllib_ccmp_data*, %struct.rtllib_ccmp_data** %8, align 8
  %85 = getelementptr inbounds %struct.rtllib_ccmp_data, %struct.rtllib_ccmp_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87, i8* %88)
  store i32 -6, i32* %4, align 4
  br label %254

90:                                               ; preds = %75
  %91 = load %struct.rtllib_ccmp_data*, %struct.rtllib_ccmp_data** %8, align 8
  %92 = getelementptr inbounds %struct.rtllib_ccmp_data, %struct.rtllib_ccmp_data* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = call i64 (...) @net_ratelimit()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %11, align 8
  %100 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %98, %95
  store i32 -3, i32* %4, align 4
  br label %254

105:                                              ; preds = %90
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 7
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  store i32 %108, i32* %109, align 16
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 6
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 1
  store i32 %112, i32* %113, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 5
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  store i32 %116, i32* %117, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 3
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 4
  store i32 %124, i32* %125, align 16
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 5
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 8
  store i32* %131, i32** %10, align 8
  %132 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %133 = load %struct.rtllib_ccmp_data*, %struct.rtllib_ccmp_data** %8, align 8
  %134 = getelementptr inbounds %struct.rtllib_ccmp_data, %struct.rtllib_ccmp_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CCMP_PN_LEN, align 4
  %137 = call i64 @memcmp(i32* %132, i32 %135, i32 %136)
  %138 = icmp sle i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %105
  %140 = load %struct.rtllib_ccmp_data*, %struct.rtllib_ccmp_data** %8, align 8
  %141 = getelementptr inbounds %struct.rtllib_ccmp_data, %struct.rtllib_ccmp_data* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  store i32 -4, i32* %4, align 4
  br label %254

144:                                              ; preds = %105
  %145 = load %struct.cb_desc*, %struct.cb_desc** %12, align 8
  %146 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %231, label %149

149:                                              ; preds = %144
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32, i32* @CCMP_HDR_LEN, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %14, align 8
  %158 = load %struct.rtllib_ccmp_data*, %struct.rtllib_ccmp_data** %8, align 8
  %159 = getelementptr inbounds %struct.rtllib_ccmp_data, %struct.rtllib_ccmp_data* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  store i32* %160, i32** %17, align 8
  %161 = load i32, i32* @AES_BLOCK_LEN, align 4
  %162 = zext i32 %161 to i64
  %163 = call i8* @llvm.stacksave()
  store i8* %163, i8** %18, align 8
  %164 = alloca i32, i64 %162, align 16
  store i64 %162, i64* %19, align 8
  %165 = load %struct.rtllib_ccmp_data*, %struct.rtllib_ccmp_data** %8, align 8
  %166 = getelementptr inbounds %struct.rtllib_ccmp_data, %struct.rtllib_ccmp_data* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @GFP_ATOMIC, align 4
  %169 = call %struct.aead_request* @aead_request_alloc(i32 %167, i32 %168)
  store %struct.aead_request* %169, %struct.aead_request** %15, align 8
  %170 = load %struct.aead_request*, %struct.aead_request** %15, align 8
  %171 = icmp ne %struct.aead_request* %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %149
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %227

175:                                              ; preds = %149
  %176 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %11, align 8
  %177 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %178 = load i32*, i32** %17, align 8
  %179 = call i32 @ccmp_init_iv_and_aad(%struct.rtllib_hdr_4addr* %176, i32* %177, i32* %164, i32* %178)
  store i32 %179, i32* %20, align 4
  %180 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %16, i64 0, i64 0
  %181 = call i32 @sg_init_table(%struct.scatterlist* %180, i32 2)
  %182 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %16, i64 0, i64 0
  %183 = load i32*, i32** %17, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sext i32 %184 to i64
  %186 = call i32 @sg_set_buf(%struct.scatterlist* %182, i32* %183, i64 %185)
  %187 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %16, i64 0, i64 1
  %188 = load i32*, i32** %10, align 8
  %189 = load i64, i64* %14, align 8
  %190 = call i32 @sg_set_buf(%struct.scatterlist* %187, i32* %188, i64 %189)
  %191 = load %struct.aead_request*, %struct.aead_request** %15, align 8
  %192 = call i32 @aead_request_set_callback(%struct.aead_request* %191, i32 0, i32* null, i32* null)
  %193 = load %struct.aead_request*, %struct.aead_request** %15, align 8
  %194 = load i32, i32* %20, align 4
  %195 = call i32 @aead_request_set_ad(%struct.aead_request* %193, i32 %194)
  %196 = load %struct.aead_request*, %struct.aead_request** %15, align 8
  %197 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %16, i64 0, i64 0
  %198 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %16, i64 0, i64 0
  %199 = load i64, i64* %14, align 8
  %200 = call i32 @aead_request_set_crypt(%struct.aead_request* %196, %struct.scatterlist* %197, %struct.scatterlist* %198, i64 %199, i32* %164)
  %201 = load %struct.aead_request*, %struct.aead_request** %15, align 8
  %202 = call i32 @crypto_aead_decrypt(%struct.aead_request* %201)
  store i32 %202, i32* %21, align 4
  %203 = load %struct.aead_request*, %struct.aead_request** %15, align 8
  %204 = call i32 @aead_request_free(%struct.aead_request* %203)
  %205 = load i32, i32* %21, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %175
  %208 = call i64 (...) @net_ratelimit()
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %11, align 8
  %212 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %210, %207
  %216 = load %struct.rtllib_ccmp_data*, %struct.rtllib_ccmp_data** %8, align 8
  %217 = getelementptr inbounds %struct.rtllib_ccmp_data, %struct.rtllib_ccmp_data* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 4
  store i32 -5, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %227

220:                                              ; preds = %175
  %221 = load %struct.rtllib_ccmp_data*, %struct.rtllib_ccmp_data** %8, align 8
  %222 = getelementptr inbounds %struct.rtllib_ccmp_data, %struct.rtllib_ccmp_data* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %225 = load i32, i32* @CCMP_PN_LEN, align 4
  %226 = call i32 @memcpy(i32 %223, i32* %224, i32 %225)
  store i32 0, i32* %22, align 4
  br label %227

227:                                              ; preds = %220, %215, %172
  %228 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %228)
  %229 = load i32, i32* %22, align 4
  switch i32 %229, label %256 [
    i32 0, label %230
    i32 1, label %254
  ]

230:                                              ; preds = %227
  br label %231

231:                                              ; preds = %230, %144
  %232 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %233 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* @CCMP_HDR_LEN, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %239 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %6, align 4
  %242 = call i32 @memmove(i32* %237, i32* %240, i32 %241)
  %243 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %244 = load i32, i32* @CCMP_HDR_LEN, align 4
  %245 = call i32 @skb_pull(%struct.sk_buff* %243, i32 %244)
  %246 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %247 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %248 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @CCMP_MIC_LEN, align 4
  %251 = sub nsw i32 %249, %250
  %252 = call i32 @skb_trim(%struct.sk_buff* %246, i32 %251)
  %253 = load i32, i32* %9, align 4
  store i32 %253, i32* %4, align 4
  br label %254

254:                                              ; preds = %231, %227, %139, %104, %83, %70, %40
  %255 = load i32, i32* %4, align 4
  ret i32 %255

256:                                              ; preds = %227
  unreachable
}

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.aead_request* @aead_request_alloc(i32, i32) #1

declare dso_local i32 @ccmp_init_iv_and_aad(%struct.rtllib_hdr_4addr*, i32*, i32*, i32*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i64) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32*, i32*) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i64, i32*) #1

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #1

declare dso_local i32 @aead_request_free(%struct.aead_request*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
