; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32*, i32, i64 }
%struct.ieee80211_ccmp_data = type { i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.rtl_80211_hdr_4addr = type { i32 }
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
@.str.3 = private unnamed_addr constant [64 x i8] c"CCMP: replay detected: STA=%pM previous PN %pm received PN %pm\0A\00", align 1
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"CCMP: decrypt failed: STA=%pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i8*)* @ieee80211_ccmp_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ccmp_decrypt(%struct.sk_buff* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_ccmp_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rtl_80211_hdr_4addr*, align 8
  %12 = alloca %struct.cb_desc*, align 8
  %13 = alloca [6 x i32], align 16
  %14 = alloca %struct.aead_request*, align 8
  %15 = alloca [2 x %struct.scatterlist], align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.ieee80211_ccmp_data*
  store %struct.ieee80211_ccmp_data* %24, %struct.ieee80211_ccmp_data** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 3
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
  %41 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  store i32 -1, i32* %4, align 4
  br label %282

45:                                               ; preds = %3
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to %struct.rtl_80211_hdr_4addr*
  store %struct.rtl_80211_hdr_4addr* %49, %struct.rtl_80211_hdr_4addr** %11, align 8
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
  %60 = call i32 @BIT(i32 5)
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %45
  %64 = call i64 (...) @net_ratelimit()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %11, align 8
  %71 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %66, %63
  %75 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %76 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  store i32 -2, i32* %4, align 4
  br label %282

79:                                               ; preds = %45
  %80 = load i32, i32* %9, align 4
  %81 = ashr i32 %80, 6
  store i32 %81, i32* %9, align 4
  %82 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %83 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %92 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %90, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94, i8* %95)
  store i32 -6, i32* %4, align 4
  br label %282

97:                                               ; preds = %79
  %98 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %99 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %97
  %103 = call i64 (...) @net_ratelimit()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %11, align 8
  %110 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %108, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %105, %102
  store i32 -3, i32* %4, align 4
  br label %282

115:                                              ; preds = %97
  %116 = load i32*, i32** %10, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 7
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  store i32 %118, i32* %119, align 16
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 6
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 1
  store i32 %122, i32* %123, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 5
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  store i32 %126, i32* %127, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 3
  store i32 %130, i32* %131, align 4
  %132 = load i32*, i32** %10, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 4
  store i32 %134, i32* %135, align 16
  %136 = load i32*, i32** %10, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 5
  store i32 %138, i32* %139, align 4
  %140 = load i32*, i32** %10, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 8
  store i32* %141, i32** %10, align 8
  %142 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %143 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %144 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CCMP_PN_LEN, align 4
  %147 = call i64 @memcmp(i32* %142, i32 %145, i32 %146)
  %148 = icmp sle i64 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %115
  %150 = call i64 (...) @net_ratelimit()
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %11, align 8
  %157 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %160 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %163 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %155, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %158, i32 %161, i32* %162)
  br label %164

164:                                              ; preds = %152, %149
  %165 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %166 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  store i32 -4, i32* %4, align 4
  br label %282

169:                                              ; preds = %115
  %170 = load %struct.cb_desc*, %struct.cb_desc** %12, align 8
  %171 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %259, label %174

174:                                              ; preds = %169
  %175 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %176 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  store i32* %177, i32** %16, align 8
  %178 = load i32, i32* @AES_BLOCK_LEN, align 4
  %179 = zext i32 %178 to i64
  %180 = call i8* @llvm.stacksave()
  store i8* %180, i8** %17, align 8
  %181 = alloca i32, i64 %179, align 16
  store i64 %179, i64* %18, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %183 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load i32, i32* @CCMP_HDR_LEN, align 4
  %188 = sub nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %21, align 8
  %190 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %191 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @GFP_ATOMIC, align 4
  %194 = call %struct.aead_request* @aead_request_alloc(i32 %192, i32 %193)
  store %struct.aead_request* %194, %struct.aead_request** %14, align 8
  %195 = load %struct.aead_request*, %struct.aead_request** %14, align 8
  %196 = icmp ne %struct.aead_request* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %174
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %255

200:                                              ; preds = %174
  %201 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %11, align 8
  %202 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %203 = load i32*, i32** %16, align 8
  %204 = call i32 @ccmp_init_iv_and_aad(%struct.rtl_80211_hdr_4addr* %201, i32* %202, i32* %181, i32* %203)
  store i32 %204, i32* %19, align 4
  %205 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %15, i64 0, i64 0
  %206 = call i32 @sg_init_table(%struct.scatterlist* %205, i32 2)
  %207 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %15, i64 0, i64 0
  %208 = load i32*, i32** %16, align 8
  %209 = load i32, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = call i32 @sg_set_buf(%struct.scatterlist* %207, i32* %208, i64 %210)
  %212 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %15, i64 0, i64 1
  %213 = load i32*, i32** %10, align 8
  %214 = load i64, i64* %21, align 8
  %215 = call i32 @sg_set_buf(%struct.scatterlist* %212, i32* %213, i64 %214)
  %216 = load %struct.aead_request*, %struct.aead_request** %14, align 8
  %217 = call i32 @aead_request_set_callback(%struct.aead_request* %216, i32 0, i32* null, i32* null)
  %218 = load %struct.aead_request*, %struct.aead_request** %14, align 8
  %219 = load i32, i32* %19, align 4
  %220 = call i32 @aead_request_set_ad(%struct.aead_request* %218, i32 %219)
  %221 = load %struct.aead_request*, %struct.aead_request** %14, align 8
  %222 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %15, i64 0, i64 0
  %223 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %15, i64 0, i64 0
  %224 = load i64, i64* %21, align 8
  %225 = call i32 @aead_request_set_crypt(%struct.aead_request* %221, %struct.scatterlist* %222, %struct.scatterlist* %223, i64 %224, i32* %181)
  %226 = load %struct.aead_request*, %struct.aead_request** %14, align 8
  %227 = call i32 @crypto_aead_decrypt(%struct.aead_request* %226)
  store i32 %227, i32* %20, align 4
  %228 = load %struct.aead_request*, %struct.aead_request** %14, align 8
  %229 = call i32 @aead_request_free(%struct.aead_request* %228)
  %230 = load i32, i32* %20, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %248

232:                                              ; preds = %200
  %233 = call i64 (...) @net_ratelimit()
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  %236 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %237 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %11, align 8
  %240 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %238, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %241)
  br label %243

243:                                              ; preds = %235, %232
  %244 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %245 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  store i32 -5, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %255

248:                                              ; preds = %200
  %249 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %250 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %253 = load i32, i32* @CCMP_PN_LEN, align 4
  %254 = call i32 @memcpy(i32 %251, i32* %252, i32 %253)
  store i32 0, i32* %22, align 4
  br label %255

255:                                              ; preds = %248, %243, %197
  %256 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %256)
  %257 = load i32, i32* %22, align 4
  switch i32 %257, label %284 [
    i32 0, label %258
    i32 1, label %282
  ]

258:                                              ; preds = %255
  br label %259

259:                                              ; preds = %258, %169
  %260 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %261 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* @CCMP_HDR_LEN, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %267 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %6, align 4
  %270 = call i32 @memmove(i32* %265, i32* %268, i32 %269)
  %271 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %272 = load i32, i32* @CCMP_HDR_LEN, align 4
  %273 = call i32 @skb_pull(%struct.sk_buff* %271, i32 %272)
  %274 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %275 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %276 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @CCMP_MIC_LEN, align 4
  %279 = sub nsw i32 %277, %278
  %280 = call i32 @skb_trim(%struct.sk_buff* %274, i32 %279)
  %281 = load i32, i32* %9, align 4
  store i32 %281, i32* %4, align 4
  br label %282

282:                                              ; preds = %259, %255, %164, %114, %87, %74, %40
  %283 = load i32, i32* %4, align 4
  ret i32 %283

284:                                              ; preds = %255
  unreachable
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.aead_request* @aead_request_alloc(i32, i32) #1

declare dso_local i32 @ccmp_init_iv_and_aad(%struct.rtl_80211_hdr_4addr*, i32*, i32*, i32*) #1

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
