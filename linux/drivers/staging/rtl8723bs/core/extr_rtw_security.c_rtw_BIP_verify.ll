; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_BIP_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_BIP_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_8__, %struct.mlme_ext_priv }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.mlme_ext_priv = type { i64 }
%struct.rx_pkt_attrib = type { i32 }
%struct.ieee80211_hdr = type { i8, i8* }
%union.recv_frame = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.rx_pkt_attrib }

@_FAIL = common dso_local global i32 0, align 4
@WLAN_HDR_A3_LEN = common dso_local global i32 0, align 4
@BIP_AAD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"BIP AAD allocate fail\0A\00", align 1
@_MME_IE_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"replay BIP packet\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"BIP key index error!\0A\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"BIP MIC error!\0A\00", align 1
@RTW_RX_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_BIP_verify(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rx_pkt_attrib*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca %struct.mlme_ext_priv*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %union.recv_frame*
  %22 = bitcast %union.recv_frame* %21 to %struct.TYPE_6__*
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store %struct.rx_pkt_attrib* %24, %struct.rx_pkt_attrib** %6, align 8
  %25 = load i32, i32* @_FAIL, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  store %struct.mlme_ext_priv* %27, %struct.mlme_ext_priv** %15, align 8
  %28 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %29 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* @BIP_AAD_SIZE, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i8* @rtw_zmalloc(i32 %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = call i32 @DBG_871X(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @_FAIL, align 4
  store i32 %41, i32* %3, align 4
  br label %173

42:                                               ; preds = %2
  %43 = load i8*, i8** %5, align 8
  %44 = bitcast i8* %43 to %union.recv_frame*
  %45 = bitcast %union.recv_frame* %44 to %struct.TYPE_6__*
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = bitcast i8* %50 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %51, %struct.ieee80211_hdr** %13, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* @BIP_AAD_SIZE, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %61 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 @memcpy(i8* %55, i8* %59, i32 %64)
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* @BIP_AAD_SIZE, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* @_MME_IE_, align 4
  %71 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %72 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %75 = sub nsw i32 %73, %74
  %76 = call i8* @rtw_get_ie(i8* %69, i32 %70, i32* %11, i32 %75)
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %166

79:                                               ; preds = %42
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = call i32 @memcpy(i8* %17, i8* %81, i32 6)
  %83 = load i8, i8* %17, align 1
  %84 = call i64 @le64_to_cpu(i8 zeroext %83)
  store i64 %84, i64* %19, align 8
  %85 = load i64, i64* %19, align 8
  %86 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %87 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sle i64 %85, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = call i32 @DBG_871X(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %169

92:                                               ; preds = %79
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = call i32 @memcpy(i8* %16, i8* %94, i32 2)
  %96 = load i8, i8* %16, align 1
  %97 = call i64 @le16_to_cpu(i8 zeroext %96)
  store i64 %97, i64* %18, align 8
  %98 = load i64, i64* %18, align 8
  %99 = load %struct.adapter*, %struct.adapter** %4, align 8
  %100 = getelementptr inbounds %struct.adapter, %struct.adapter* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %98, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = call i32 @DBG_871X(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %169

106:                                              ; preds = %92
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = getelementptr inbounds i8, i8* %111, i64 -8
  %113 = call i32 @memset(i8* %112, i32 0, i32 8)
  %114 = load i8*, i8** %8, align 8
  %115 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %116 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %115, i32 0, i32 0
  %117 = call i32 @memcpy(i8* %114, i8* %116, i32 2)
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @ClearRetry(i8* %118)
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @ClearPwrMgt(i8* %120)
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @ClearMData(i8* %122)
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  %126 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %127 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @memcpy(i8* %125, i8* %128, i32 18)
  %130 = load %struct.adapter*, %struct.adapter** %4, align 8
  %131 = getelementptr inbounds %struct.adapter, %struct.adapter* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load %struct.adapter*, %struct.adapter** %4, align 8
  %135 = getelementptr inbounds %struct.adapter, %struct.adapter* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* %12, align 4
  %143 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %144 = call i64 @omac1_aes_128(i32 %140, i8* %141, i32 %142, i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %106
  br label %169

147:                                              ; preds = %106
  %148 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %149 = load i8*, i8** %7, align 8
  %150 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %151 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %149, i64 %153
  %155 = getelementptr inbounds i8, i8* %154, i64 -8
  %156 = call i32 @memcmp(i8* %148, i8* %155, i32 8)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %147
  %159 = load i64, i64* %19, align 8
  %160 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %161 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load i32, i32* @_SUCCESS, align 4
  store i32 %162, i32* %10, align 4
  br label %165

163:                                              ; preds = %147
  %164 = call i32 @DBG_871X(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %158
  br label %168

166:                                              ; preds = %42
  %167 = load i32, i32* @RTW_RX_HANDLED, align 4
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %166, %165
  br label %169

169:                                              ; preds = %168, %146, %104, %90
  %170 = load i8*, i8** %8, align 8
  %171 = call i32 @kfree(i8* %170)
  %172 = load i32, i32* %10, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %169, %39
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @rtw_get_ie(i8*, i32, i32*, i32) #1

declare dso_local i64 @le64_to_cpu(i8 zeroext) #1

declare dso_local i64 @le16_to_cpu(i8 zeroext) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ClearRetry(i8*) #1

declare dso_local i32 @ClearPwrMgt(i8*) #1

declare dso_local i32 @ClearMData(i8*) #1

declare dso_local i64 @omac1_aes_128(i32, i8*, i32, i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
