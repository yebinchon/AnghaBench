; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64 }
%struct.ieee80211_ccmp_data = type { i32, i32*, i32, i32* }
%struct.rtl_80211_hdr_4addr = type { i32 }
%struct.cb_desc = type { i32 }
%struct.aead_request = type { i32 }
%struct.scatterlist = type { i32 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@CCMP_HDR_LEN = common dso_local global i64 0, align 8
@CCMP_MIC_LEN = common dso_local global i64 0, align 8
@CCMP_PN_LEN = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i8*)* @ieee80211_ccmp_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ccmp_encrypt(%struct.sk_buff* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_ccmp_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rtl_80211_hdr_4addr*, align 8
  %12 = alloca %struct.cb_desc*, align 8
  %13 = alloca %struct.aead_request*, align 8
  %14 = alloca [2 x %struct.scatterlist], align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.ieee80211_ccmp_data*
  store %struct.ieee80211_ccmp_data* %23, %struct.ieee80211_ccmp_data** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %28 = add nsw i64 %26, %27
  %29 = inttoptr i64 %28 to %struct.cb_desc*
  store %struct.cb_desc* %29, %struct.cb_desc** %12, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i64 @skb_headroom(%struct.sk_buff* %30)
  %32 = load i64, i64* @CCMP_HDR_LEN, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i64 @skb_tailroom(%struct.sk_buff* %35)
  %37 = load i64, i64* @CCMP_MIC_LEN, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %34, %3
  store i32 -1, i32* %4, align 4
  br label %222

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load i64, i64* @CCMP_HDR_LEN, align 8
  %49 = call i32* @skb_push(%struct.sk_buff* %47, i64 %48)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i64, i64* @CCMP_HDR_LEN, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @memmove(i32* %50, i32* %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %10, align 8
  %60 = load i32, i32* @CCMP_PN_LEN, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %83, %46
  %63 = load i32, i32* %9, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %62
  %66 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %67 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %75 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %65
  br label %86

83:                                               ; preds = %65
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  br label %62

86:                                               ; preds = %82, %62
  %87 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %88 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  %94 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %95 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %10, align 8
  store i32 %98, i32* %99, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %10, align 8
  store i32 0, i32* %101, align 4
  %103 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %104 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 %105, 6
  %107 = call i32 @BIT(i32 5)
  %108 = or i32 %106, %107
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  %111 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %112 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  %118 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %119 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %10, align 8
  store i32 %122, i32* %123, align 4
  %125 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %126 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %10, align 8
  store i32 %129, i32* %130, align 4
  %132 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %133 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %10, align 8
  store i32 %136, i32* %137, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to %struct.rtl_80211_hdr_4addr*
  store %struct.rtl_80211_hdr_4addr* %142, %struct.rtl_80211_hdr_4addr** %11, align 8
  %143 = load %struct.cb_desc*, %struct.cb_desc** %12, align 8
  %144 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %221, label %147

147:                                              ; preds = %86
  %148 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %149 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  store i32* %150, i32** %15, align 8
  %151 = load i32, i32* @AES_BLOCK_LEN, align 4
  %152 = zext i32 %151 to i64
  %153 = call i8* @llvm.stacksave()
  store i8* %153, i8** %16, align 8
  %154 = alloca i32, i64 %152, align 16
  store i64 %152, i64* %17, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sub nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* @CCMP_HDR_LEN, align 8
  %162 = sub nsw i64 %160, %161
  store i64 %162, i64* %20, align 8
  %163 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %164 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @GFP_ATOMIC, align 4
  %167 = call %struct.aead_request* @aead_request_alloc(i32 %165, i32 %166)
  store %struct.aead_request* %167, %struct.aead_request** %13, align 8
  %168 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %169 = icmp ne %struct.aead_request* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %147
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %219

173:                                              ; preds = %147
  %174 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %11, align 8
  %175 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %8, align 8
  %176 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32*, i32** %15, align 8
  %179 = call i32 @ccmp_init_iv_and_aad(%struct.rtl_80211_hdr_4addr* %174, i32* %177, i32* %154, i32* %178)
  store i32 %179, i32* %18, align 4
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = load i64, i64* @CCMP_MIC_LEN, align 8
  %182 = call i32 @skb_put(%struct.sk_buff* %180, i64 %181)
  %183 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %14, i64 0, i64 0
  %184 = call i32 @sg_init_table(%struct.scatterlist* %183, i32 2)
  %185 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %14, i64 0, i64 0
  %186 = load i32*, i32** %15, align 8
  %187 = ptrtoint i32* %186 to i64
  %188 = load i32, i32* %18, align 4
  %189 = sext i32 %188 to i64
  %190 = call i32 @sg_set_buf(%struct.scatterlist* %185, i64 %187, i64 %189)
  %191 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %14, i64 0, i64 1
  %192 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %194, %196
  %198 = load i64, i64* @CCMP_HDR_LEN, align 8
  %199 = add nsw i64 %197, %198
  %200 = load i64, i64* %20, align 8
  %201 = load i64, i64* @CCMP_MIC_LEN, align 8
  %202 = add i64 %200, %201
  %203 = call i32 @sg_set_buf(%struct.scatterlist* %191, i64 %199, i64 %202)
  %204 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %205 = call i32 @aead_request_set_callback(%struct.aead_request* %204, i32 0, i32* null, i32* null)
  %206 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %207 = load i32, i32* %18, align 4
  %208 = call i32 @aead_request_set_ad(%struct.aead_request* %206, i32 %207)
  %209 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %210 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %14, i64 0, i64 0
  %211 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %14, i64 0, i64 0
  %212 = load i64, i64* %20, align 8
  %213 = call i32 @aead_request_set_crypt(%struct.aead_request* %209, %struct.scatterlist* %210, %struct.scatterlist* %211, i64 %212, i32* %154)
  %214 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %215 = call i32 @crypto_aead_encrypt(%struct.aead_request* %214)
  store i32 %215, i32* %19, align 4
  %216 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %217 = call i32 @aead_request_free(%struct.aead_request* %216)
  %218 = load i32, i32* %19, align 4
  store i32 %218, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %219

219:                                              ; preds = %173, %170
  %220 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %220)
  br label %222

221:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %222

222:                                              ; preds = %221, %219, %45
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.aead_request* @aead_request_alloc(i32, i32) #1

declare dso_local i32 @ccmp_init_iv_and_aad(%struct.rtl_80211_hdr_4addr*, i32*, i32*, i32*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i64, i64) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32*, i32*) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i64, i32*) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

declare dso_local i32 @aead_request_free(%struct.aead_request*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
