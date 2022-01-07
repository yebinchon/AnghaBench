; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_rx.c_wl1271_rx_handle_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_rx.c_wl1271_rx_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32, i32 }
%struct.wl1271_rx_descriptor = type { i64, i32, i32, i64 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_hdr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Invalid packet arrived from HW. length %d\00", align 1
@WLCORE_RX_BUF_UNALIGNED = common dso_local global i32 0, align 4
@RX_BUF_ALIGN = common dso_local global i32 0, align 4
@WLCORE_RX_BUF_PADDED = common dso_local global i32 0, align 4
@WL12XX_RX_CLASS_LOGGER = common dso_local global i64 0, align 8
@WL1271_RX_DESC_DECRYPT_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"corrupted packet in RX: status: 0x%x len: %d\00", align 1
@WL1271_RX_DESC_STATUS_MASK = common dso_local global i32 0, align 4
@DEBUG_RX = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"PKT: \00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Couldn't allocate RX frame\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"rx skb 0x%p: %d B %s seq %d hlid %d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"beacon\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i32*, i32, i32, i32*)* @wl1271_rx_handle_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_rx_handle_data(%struct.wl1271* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.wl1271_rx_descriptor*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.ieee80211_hdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %208

30:                                               ; preds = %5
  %31 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @wlcore_hw_get_rx_packet_len(%struct.wl1271* %31, i32* %32, i32 %33)
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %20, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %208

42:                                               ; preds = %30
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @WLCORE_RX_BUF_UNALIGNED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @RX_BUF_ALIGN, align 4
  store i32 %47, i32* %17, align 4
  br label %55

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @WLCORE_RX_BUF_PADDED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @RX_BUF_ALIGN, align 4
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %52, %48
  br label %55

55:                                               ; preds = %54, %46
  %56 = load i32*, i32** %8, align 8
  %57 = bitcast i32* %56 to %struct.wl1271_rx_descriptor*
  store %struct.wl1271_rx_descriptor* %57, %struct.wl1271_rx_descriptor** %12, align 8
  %58 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %59 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @WL12XX_RX_CLASS_LOGGER, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, 24
  store i64 %66, i64* %21, align 8
  %67 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 24
  %70 = load i64, i64* %21, align 8
  %71 = call i32 @wl12xx_copy_fwlog(%struct.wl1271* %67, i32* %69, i64 %70)
  store i32 0, i32* %6, align 4
  br label %208

72:                                               ; preds = %55
  %73 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %74 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @WL1271_RX_DESC_DECRYPT_FAIL, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %108

79:                                               ; preds = %72
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 24
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = bitcast i32* %84 to i8*
  %86 = bitcast i8* %85 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %86, %struct.ieee80211_hdr** %14, align 8
  %87 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %88 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @WL1271_RX_DESC_STATUS_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* %20, align 4
  %93 = call i32 @wl1271_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* @DEBUG_RX, align 4
  %95 = load i32, i32* @DEBUG_CMD, align 4
  %96 = or i32 %94, %95
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 24
  %99 = load i32, i32* %20, align 4
  %100 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %101 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ieee80211_hdrlen(i32 %102)
  %104 = call i32 @min(i32 %99, i32 %103)
  %105 = call i32 @wl1271_dump(i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %98, i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %208

108:                                              ; preds = %72
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.sk_buff* @__dev_alloc_skb(i32 %111, i32 %112)
  store %struct.sk_buff* %113, %struct.sk_buff** %13, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %115 = icmp ne %struct.sk_buff* %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %208

120:                                              ; preds = %108
  %121 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @skb_reserve(%struct.sk_buff* %121, i32 %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 24
  %127 = load i32, i32* %20, align 4
  %128 = call i32 @skb_put_data(%struct.sk_buff* %124, i32* %126, i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @WLCORE_RX_BUF_PADDED, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %120
  %133 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %134 = load i32, i32* @RX_BUF_ALIGN, align 4
  %135 = call i32 @skb_pull(%struct.sk_buff* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %120
  %137 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %138 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %11, align 8
  store i32 %139, i32* %140, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %144, %struct.ieee80211_hdr** %14, align 8
  %145 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %146 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @ieee80211_is_beacon(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %136
  store i32 1, i32* %15, align 4
  br label %151

151:                                              ; preds = %150, %136
  %152 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %153 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @ieee80211_is_data_present(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i32 1, i32* %16, align 4
  br label %158

158:                                              ; preds = %157, %151
  %159 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %160 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %162 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %161)
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %165 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ieee80211_is_probe_resp(i32 %166)
  %168 = call i32 @wl1271_rx_status(%struct.wl1271* %159, %struct.wl1271_rx_descriptor* %160, i32 %162, i32 %163, i32 %167)
  %169 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %170 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %172 = call i32 @wlcore_hw_set_rx_csum(%struct.wl1271* %169, %struct.wl1271_rx_descriptor* %170, %struct.sk_buff* %171)
  %173 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %174 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @le16_to_cpu(i32 %175)
  %177 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %178 = and i32 %176, %177
  %179 = ashr i32 %178, 4
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* @DEBUG_RX, align 4
  %181 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %183 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %186 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %184, %187
  %189 = load i32, i32* %15, align 4
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %193 = load i32, i32* %19, align 4
  %194 = load i32*, i32** %11, align 8
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @wl1271_debug(i32 %180, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %181, i64 %188, i8* %192, i32 %193, i32 %195)
  %197 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %198 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %197, i32 0, i32 2
  %199 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %200 = call i32 @skb_queue_tail(i32* %198, %struct.sk_buff* %199)
  %201 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %202 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %205 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %204, i32 0, i32 0
  %206 = call i32 @queue_work(i32 %203, i32* %205)
  %207 = load i32, i32* %16, align 4
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %158, %116, %79, %63, %37, %27
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wlcore_hw_get_rx_packet_len(%struct.wl1271*, i32*, i32) #1

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local i32 @wl12xx_copy_fwlog(%struct.wl1271*, i32*, i64) #1

declare dso_local i32 @wl1271_warning(i8*, i32, i32) #1

declare dso_local i32 @wl1271_dump(i32, i8*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ieee80211_is_data_present(i32) #1

declare dso_local i32 @wl1271_rx_status(%struct.wl1271*, %struct.wl1271_rx_descriptor*, i32, i32, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @wlcore_hw_set_rx_csum(%struct.wl1271*, %struct.wl1271_rx_descriptor*, %struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, %struct.sk_buff*, i64, i8*, i32, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
