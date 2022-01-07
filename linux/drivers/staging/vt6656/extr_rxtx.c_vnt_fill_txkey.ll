; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_fill_txkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_fill_txkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { %struct.ieee80211_hdr* }
%struct.ieee80211_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32*, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.vnt_mic_hdr = type { i32, i32*, i32, i8*, i8*, i32, i32, i32, i8*, i32, i8* }

@WLAN_KEY_LEN_WEP40 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_CCMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_usb_send_context*, i32*, %struct.ieee80211_key_conf*, %struct.sk_buff*, i32, %struct.vnt_mic_hdr*)* @vnt_fill_txkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_fill_txkey(%struct.vnt_usb_send_context* %0, i32* %1, %struct.ieee80211_key_conf* %2, %struct.sk_buff* %3, i32 %4, %struct.vnt_mic_hdr* %5) #0 {
  %7 = alloca %struct.vnt_usb_send_context*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnt_mic_hdr*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %9, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.vnt_mic_hdr* %5, %struct.vnt_mic_hdr** %12, align 8
  %16 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %7, align 8
  %17 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  store %struct.ieee80211_hdr* %18, %struct.ieee80211_hdr** %13, align 8
  %19 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %20 = bitcast %struct.ieee80211_hdr* %19 to i32*
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %15, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %25)
  %27 = load i32, i32* %11, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %202 [
    i32 128, label %39
    i32 129, label %39
    i32 130, label %70
    i32 131, label %75
  ]

39:                                               ; preds = %6, %6
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @memcpy(i32* %40, i32* %41, i32 3)
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i32* %44, i32* %47, i32 %50)
  %52 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @WLAN_KEY_LEN_WEP40, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %39
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 8
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @memcpy(i32* %59, i32* %60, i32 3)
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 11
  %64 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %65 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @WLAN_KEY_LEN_WEP40, align 4
  %68 = call i32 @memcpy(i32* %63, i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %57, %39
  br label %203

70:                                               ; preds = %6
  %71 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @ieee80211_get_tkip_p2k(%struct.ieee80211_key_conf* %71, %struct.sk_buff* %72, i32* %73)
  br label %203

75:                                               ; preds = %6
  %76 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %77 = icmp ne %struct.vnt_mic_hdr* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %203

79:                                               ; preds = %75
  %80 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %81 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %80, i32 0, i32 0
  store i32 89, i32* %81, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i8* @cpu_to_be16(i32 %82)
  %84 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %85 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %84, i32 0, i32 10
  store i8* %83, i8** %85, align 8
  %86 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %87 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %90 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ether_addr_copy(i32 %88, i32 %91)
  %93 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %94 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %93, i32 0, i32 3
  %95 = call i32 @atomic64_read(i32* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %98 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* %14, align 4
  %102 = ashr i32 %101, 8
  %103 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %104 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  store i32 %102, i32* %106, align 4
  %107 = load i32, i32* %14, align 4
  %108 = ashr i32 %107, 16
  %109 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %110 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* %14, align 4
  %114 = ashr i32 %113, 24
  %115 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %116 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32 %114, i32* %118, align 4
  %119 = load i32, i32* %14, align 4
  %120 = ashr i32 %119, 32
  %121 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %122 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %14, align 4
  %126 = ashr i32 %125, 40
  %127 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %128 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %126, i32* %130, align 4
  %131 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %132 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ieee80211_has_a4(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %79
  %137 = call i8* @cpu_to_be16(i32 28)
  %138 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %139 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %138, i32 0, i32 8
  store i8* %137, i8** %139, align 8
  br label %144

140:                                              ; preds = %79
  %141 = call i8* @cpu_to_be16(i32 22)
  %142 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %143 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %142, i32 0, i32 8
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %140, %136
  %145 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %146 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %149 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ether_addr_copy(i32 %147, i32 %150)
  %152 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %153 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %156 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ether_addr_copy(i32 %154, i32 %157)
  %159 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %160 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %163 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ether_addr_copy(i32 %161, i32 %164)
  %166 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %167 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @le16_to_cpu(i32 %168)
  %170 = and i32 %169, 51087
  %171 = call i8* @cpu_to_le16(i32 %170)
  %172 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %173 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  %174 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %175 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le16_to_cpu(i32 %176)
  %178 = and i32 %177, 15
  %179 = call i8* @cpu_to_le16(i32 %178)
  %180 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %181 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  %182 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %183 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ieee80211_has_a4(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %144
  %188 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %189 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %192 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ether_addr_copy(i32 %190, i32 %193)
  br label %195

195:                                              ; preds = %187, %144
  %196 = load i32*, i32** %8, align 8
  %197 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %198 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* @WLAN_KEY_LEN_CCMP, align 4
  %201 = call i32 @memcpy(i32* %196, i32* %199, i32 %200)
  br label %203

202:                                              ; preds = %6
  br label %203

203:                                              ; preds = %78, %202, %195, %70, %69
  ret void
}

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ieee80211_get_tkip_p2k(%struct.ieee80211_key_conf*, %struct.sk_buff*, i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @ieee80211_has_a4(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
