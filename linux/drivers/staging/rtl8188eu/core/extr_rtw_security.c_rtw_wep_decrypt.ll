; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_rtw_wep_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_rtw_wep_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.security_priv }
%struct.security_priv = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rx_pkt_attrib = type { i64, i32, i32 }
%struct.sk_buff = type { i8*, i32 }
%struct.lib80211_crypto_ops = type { i64 (i32, i32, i32*, i8*)*, i32 (i8*)*, i64 (%struct.sk_buff*, i32, i8*)*, i8* (i32)* }
%struct.recv_frame = type { %struct.sk_buff*, %struct.rx_pkt_attrib }

@_WEP40_ = common dso_local global i64 0, align 8
@_WEP104_ = common dso_local global i64 0, align 8
@_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_wep_decrypt(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rx_pkt_attrib*, align 8
  %7 = alloca %struct.security_priv*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lib80211_crypto_ops*, align 8
  %14 = alloca [4 x i8], align 1
  %15 = alloca [4 x i8], align 1
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.recv_frame*
  %18 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %17, i32 0, i32 1
  store %struct.rx_pkt_attrib* %18, %struct.rx_pkt_attrib** %6, align 8
  %19 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %20 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @_WEP40_, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %26 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @_WEP104_, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %156

30:                                               ; preds = %24, %2
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  store %struct.security_priv* %32, %struct.security_priv** %7, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = bitcast i8* %33 to %struct.recv_frame*
  %35 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %34, i32 0, i32 0
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %8, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %40 = load i32, i32* @_SUCCESS, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %42 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %12, align 4
  %44 = call %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.lib80211_crypto_ops* %44, %struct.lib80211_crypto_ops** %13, align 8
  %45 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %13, align 8
  %46 = icmp ne %struct.lib80211_crypto_ops* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %30
  %48 = load i32, i32* @_FAIL, align 4
  store i32 %48, i32* %11, align 4
  br label %142

49:                                               ; preds = %30
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %53 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = call i32 @memcpy(i8* %50, i8* %56, i32 4)
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = getelementptr inbounds i8, i8* %64, i64 -4
  %66 = call i32 @memcpy(i8* %58, i8* %65, i32 4)
  %67 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %13, align 8
  %68 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %67, i32 0, i32 3
  %69 = load i8* (i32)*, i8* (i32)** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i8* %69(i32 %70)
  store i8* %71, i8** %10, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %49
  %75 = load i32, i32* @_FAIL, align 4
  store i32 %75, i32* %11, align 4
  br label %142

76:                                               ; preds = %49
  %77 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %13, align 8
  %78 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %77, i32 0, i32 0
  %79 = load i64 (i32, i32, i32*, i8*)*, i64 (i32, i32, i32*, i8*)** %78, align 8
  %80 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %81 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %89 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = call i64 %79(i32 %87, i32 %94, i32* null, i8* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %76
  %99 = load i32, i32* @_FAIL, align 4
  store i32 %99, i32* %11, align 4
  br label %142

100:                                              ; preds = %76
  %101 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %13, align 8
  %102 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %101, i32 0, i32 2
  %103 = load i64 (%struct.sk_buff*, i32, i8*)*, i64 (%struct.sk_buff*, i32, i8*)** %102, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %106 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = call i64 %103(%struct.sk_buff* %104, i32 %107, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* @_FAIL, align 4
  store i32 %112, i32* %11, align 4
  br label %142

113:                                              ; preds = %100
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 4
  %117 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %118 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @memmove(i8* %114, i8* %116, i32 %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = call i32 @skb_push(%struct.sk_buff* %121, i32 4)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = call i32 @skb_put(%struct.sk_buff* %123, i32 4)
  %125 = load i8*, i8** %9, align 8
  %126 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %127 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %125, i64 %129
  %131 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %132 = call i32 @memcpy(i8* %130, i8* %131, i32 4)
  %133 = load i8*, i8** %9, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %133, i64 %137
  %139 = getelementptr inbounds i8, i8* %138, i64 -4
  %140 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %141 = call i32 @memcpy(i8* %139, i8* %140, i32 4)
  br label %142

142:                                              ; preds = %113, %111, %98, %74, %47
  %143 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %13, align 8
  %144 = icmp ne %struct.lib80211_crypto_ops* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %142
  %146 = load i8*, i8** %10, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %13, align 8
  %150 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %149, i32 0, i32 1
  %151 = load i32 (i8*)*, i32 (i8*)** %150, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = call i32 %151(i8* %152)
  br label %154

154:                                              ; preds = %148, %145, %142
  %155 = load i32, i32* %11, align 4
  store i32 %155, i32* %3, align 4
  br label %158

156:                                              ; preds = %24
  %157 = load i32, i32* @_FAIL, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
