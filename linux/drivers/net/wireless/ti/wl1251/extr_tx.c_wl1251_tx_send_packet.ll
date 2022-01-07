; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, %struct.TYPE_6__*, %struct.sk_buff** }
%struct.TYPE_6__ = type { i64, i64 }
%struct.sk_buff = type { i8*, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.tx_double_buffer_desc = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WL1251_TKIP_IV_SPACE = common dso_local global i32 0, align 4
@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"skb offset %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"new skb offset %d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"tx id %u skb 0x%p payload %u rate 0x%x queue %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, %struct.sk_buff*, %struct.ieee80211_tx_info*)* @wl1251_tx_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_tx_send_packet(%struct.wl1251* %0, %struct.sk_buff* %1, %struct.ieee80211_tx_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.tx_double_buffer_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i8*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %215

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.tx_double_buffer_desc*
  store %struct.tx_double_buffer_desc* %27, %struct.tx_double_buffer_desc** %8, align 8
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %74

33:                                               ; preds = %23
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 24
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %50 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load i32, i32* @WL1251_TKIP_IV_SPACE, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @cpu_to_le16(i32 %55)
  %57 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %58 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @ieee80211_hdrlen(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load i32, i32* @WL1251_TKIP_IV_SPACE, align 4
  %63 = call i8* @skb_push(%struct.sk_buff* %61, i32 %62)
  store i8* %63, i8** %14, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* @WL1251_TKIP_IV_SPACE, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 24, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memmove(i8* %64, i8* %68, i32 %72)
  br label %74

74:                                               ; preds = %42, %33, %23
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = and i64 %78, 3
  %80 = call i64 @unlikely(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %164

82:                                               ; preds = %74
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = sub nsw i64 4, %86
  %88 = and i64 %87, 3
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* @DEBUG_TX, align 4
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = call i32 (i32, i8*, i64, ...) @wl1251_debug(i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = call i64 @skb_cloned(%struct.sk_buff* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %82
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call i32 @skb_tailroom(%struct.sk_buff* %98)
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %141

102:                                              ; preds = %97, %82
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %103, i32 0, i32 3, i32 %104)
  store %struct.sk_buff* %105, %struct.sk_buff** %16, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %107 = icmp eq %struct.sk_buff* %106, null
  %108 = zext i1 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = call i64 @unlikely(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %215

115:                                              ; preds = %102
  %116 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = bitcast i8* %118 to %struct.tx_double_buffer_desc*
  store %struct.tx_double_buffer_desc* %119, %struct.tx_double_buffer_desc** %8, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %122, %struct.sk_buff** %6, align 8
  %123 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %124 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %123, i32 0, i32 2
  %125 = load %struct.sk_buff**, %struct.sk_buff*** %124, align 8
  %126 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %127 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %125, i64 %128
  store %struct.sk_buff* %122, %struct.sk_buff** %129, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = ptrtoint i8* %132 to i64
  %134 = sub nsw i64 4, %133
  %135 = and i64 %134, 3
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* @DEBUG_TX, align 4
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = call i32 (i32, i8*, i64, ...) @wl1251_debug(i32 %137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %139)
  br label %141

141:                                              ; preds = %115, %97
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %141
  %145 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %17, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @skb_reserve(%struct.sk_buff* %148, i32 %149)
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** %17, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @memmove(i8* %153, i8* %154, i32 %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = bitcast i8* %161 to %struct.tx_double_buffer_desc*
  store %struct.tx_double_buffer_desc* %162, %struct.tx_double_buffer_desc** %8, align 8
  br label %163

163:                                              ; preds = %144, %141
  br label %164

164:                                              ; preds = %163, %74
  %165 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @WL1251_TX_ALIGN(i32 %167)
  store i32 %168, i32* %9, align 4
  %169 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %170 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, 1
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %164
  %175 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %176 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %175, i32 0, i32 1
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %181 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %180, i32 0, i32 1
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %179, %184
  store i64 %185, i64* %10, align 8
  br label %192

186:                                              ; preds = %164
  %187 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %188 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %187, i32 0, i32 1
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %10, align 8
  br label %192

192:                                              ; preds = %186, %174
  %193 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %194 = load i64, i64* %10, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @wl1251_mem_write(%struct.wl1251* %193, i64 %194, i8* %197, i32 %198)
  %200 = load i32, i32* @DEBUG_TX, align 4
  %201 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %202 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %205 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %206 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %209 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %212 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i32, i8*, i64, ...) @wl1251_debug(i32 %200, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %203, %struct.sk_buff* %204, i32 %207, i32 %210, i32 %213)
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %192, %112, %20
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @wl1251_debug(i32, i8*, i64, ...) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @WL1251_TX_ALIGN(i32) #1

declare dso_local i32 @wl1251_mem_write(%struct.wl1251*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
