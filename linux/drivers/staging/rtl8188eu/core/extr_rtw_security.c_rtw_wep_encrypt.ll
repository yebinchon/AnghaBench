; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_rtw_wep_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_rtw_wep_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.xmit_priv, %struct.security_priv }
%struct.xmit_priv = type { i32 }
%struct.security_priv = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pkt_attrib = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.lib80211_crypto_ops = type { i64 (i32, i32, i32*, i8*)*, i32 (i8*)*, i64 (%struct.sk_buff*, i32, i8*)*, i8* (i32)* }
%struct.xmit_frame = type { i32*, i32, %struct.pkt_attrib }

@_WEP40_ = common dso_local global i64 0, align 8
@_WEP104_ = common dso_local global i64 0, align 8
@TXDESC_SIZE = common dso_local global i32 0, align 4
@PACKET_OFFSET_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WEP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_wep_encrypt(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pkt_attrib*, align 8
  %10 = alloca %struct.security_priv*, align 8
  %11 = alloca %struct.xmit_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.lib80211_crypto_ops*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i32* %16 to %struct.xmit_frame*
  %18 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %17, i32 0, i32 2
  store %struct.pkt_attrib* %18, %struct.pkt_attrib** %9, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  store %struct.security_priv* %20, %struct.security_priv** %10, align 8
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  store %struct.xmit_priv* %22, %struct.xmit_priv** %11, align 8
  %23 = load %struct.security_priv*, %struct.security_priv** %10, align 8
  %24 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = bitcast i32* %26 to %struct.xmit_frame*
  %28 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %192

32:                                               ; preds = %2
  %33 = load %struct.pkt_attrib*, %struct.pkt_attrib** %9, align 8
  %34 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @_WEP40_, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.pkt_attrib*, %struct.pkt_attrib** %9, align 8
  %40 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @_WEP104_, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %192

45:                                               ; preds = %38, %32
  %46 = load i32, i32* @TXDESC_SIZE, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = bitcast i32* %47 to %struct.xmit_frame*
  %49 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PACKET_OFFSET_SZ, align 4
  %52 = mul nsw i32 %50, %51
  %53 = add nsw i32 %46, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = bitcast i32* %54 to %struct.xmit_frame*
  %56 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32* %60, i32** %7, align 8
  %61 = call %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.lib80211_crypto_ops* %61, %struct.lib80211_crypto_ops** %15, align 8
  %62 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %15, align 8
  %63 = icmp ne %struct.lib80211_crypto_ops* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %45
  br label %192

65:                                               ; preds = %45
  %66 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %15, align 8
  %67 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %66, i32 0, i32 3
  %68 = load i8* (i32)*, i8* (i32)** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i8* %68(i32 %69)
  store i8* %70, i8** %13, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  br label %192

74:                                               ; preds = %65
  %75 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %15, align 8
  %76 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %75, i32 0, i32 0
  %77 = load i64 (i32, i32, i32*, i8*)*, i64 (i32, i32, i32*, i8*)** %76, align 8
  %78 = load %struct.security_priv*, %struct.security_priv** %10, align 8
  %79 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.security_priv*, %struct.security_priv** %10, align 8
  %87 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %13, align 8
  %94 = call i64 %77(i32 %85, i32 %92, i32* null, i8* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %74
  br label %186

97:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %182, %97
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.pkt_attrib*, %struct.pkt_attrib** %9, align 8
  %101 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %185

104:                                              ; preds = %98
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  %107 = load %struct.pkt_attrib*, %struct.pkt_attrib** %9, align 8
  %108 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.pkt_attrib*, %struct.pkt_attrib** %9, align 8
  %113 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %6, align 4
  br label %119

115:                                              ; preds = %104
  %116 = load %struct.xmit_priv*, %struct.xmit_priv** %11, align 8
  %117 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %115, %111
  %120 = load i32, i32* %6, align 4
  %121 = call %struct.sk_buff* @dev_alloc_skb(i32 %120)
  store %struct.sk_buff* %121, %struct.sk_buff** %14, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %123 = icmp ne %struct.sk_buff* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  br label %186

125:                                              ; preds = %119
  %126 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @skb_put_data(%struct.sk_buff* %126, i32* %127, i32 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.pkt_attrib*, %struct.pkt_attrib** %9, align 8
  %138 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @memmove(i64 %133, i64 %136, i32 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %142 = call i32 @skb_pull(%struct.sk_buff* %141, i32 4)
  %143 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %146, 4
  %148 = call i32 @skb_trim(%struct.sk_buff* %143, i64 %147)
  %149 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %15, align 8
  %150 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %149, i32 0, i32 2
  %151 = load i64 (%struct.sk_buff*, i32, i8*)*, i64 (%struct.sk_buff*, i32, i8*)** %150, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %153 = load %struct.pkt_attrib*, %struct.pkt_attrib** %9, align 8
  %154 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i8*, i8** %13, align 8
  %157 = call i64 %151(%struct.sk_buff* %152, i32 %155, i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %125
  %160 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %161 = call i32 @kfree_skb(%struct.sk_buff* %160)
  br label %186

162:                                              ; preds = %125
  %163 = load i32*, i32** %7, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @memcpy(i32* %163, i64 %166, i64 %169)
  %171 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32*, i32** %7, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 %173
  store i32* %175, i32** %7, align 8
  %176 = load i32*, i32** %7, align 8
  %177 = ptrtoint i32* %176 to i64
  %178 = call i64 @round_up(i64 %177, i32 4)
  %179 = inttoptr i64 %178 to i32*
  store i32* %179, i32** %7, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %181 = call i32 @kfree_skb(%struct.sk_buff* %180)
  br label %182

182:                                              ; preds = %162
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %98

185:                                              ; preds = %98
  br label %186

186:                                              ; preds = %185, %159, %124, %96
  %187 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %15, align 8
  %188 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %187, i32 0, i32 1
  %189 = load i32 (i8*)*, i32 (i8*)** %188, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = call i32 %189(i8* %190)
  br label %192

192:                                              ; preds = %186, %73, %64, %44, %31
  ret void
}

declare dso_local %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i64 @round_up(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
