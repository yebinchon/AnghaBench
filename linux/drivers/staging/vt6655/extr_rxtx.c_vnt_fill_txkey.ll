; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_vnt_fill_txkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_vnt_fill_txkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32*, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.vnt_mic_hdr = type { i32, i32*, i32, i8*, i8*, i32, i32, i32, i8*, i32, i8* }

@WLAN_KEY_LEN_WEP40 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_CCMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hdr*, i32*, %struct.ieee80211_key_conf*, %struct.sk_buff*, i32, %struct.vnt_mic_hdr*)* @vnt_fill_txkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_fill_txkey(%struct.ieee80211_hdr* %0, i32* %1, %struct.ieee80211_key_conf* %2, %struct.sk_buff* %3, i32 %4, %struct.vnt_mic_hdr* %5) #0 {
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnt_mic_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.ieee80211_hdr* %0, %struct.ieee80211_hdr** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %9, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.vnt_mic_hdr* %5, %struct.vnt_mic_hdr** %12, align 8
  %15 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %16 = bitcast %struct.ieee80211_hdr* %15 to i32*
  %17 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %18 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32* %20, i32** %14, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %21)
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %26 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %33 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %198 [
    i32 128, label %35
    i32 129, label %35
    i32 130, label %66
    i32 131, label %71
  ]

35:                                               ; preds = %6, %6
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @memcpy(i32* %36, i32* %37, i32 3)
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32* %40, i32* %43, i32 %46)
  %48 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WLAN_KEY_LEN_WEP40, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %35
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 8
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @memcpy(i32* %55, i32* %56, i32 3)
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 11
  %60 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %61 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @WLAN_KEY_LEN_WEP40, align 4
  %64 = call i32 @memcpy(i32* %59, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %53, %35
  br label %199

66:                                               ; preds = %6
  %67 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @ieee80211_get_tkip_p2k(%struct.ieee80211_key_conf* %67, %struct.sk_buff* %68, i32* %69)
  br label %199

71:                                               ; preds = %6
  %72 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %73 = icmp ne %struct.vnt_mic_hdr* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %199

75:                                               ; preds = %71
  %76 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %77 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %76, i32 0, i32 0
  store i32 89, i32* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i8* @cpu_to_be16(i32 %78)
  %80 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %81 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %80, i32 0, i32 10
  store i8* %79, i8** %81, align 8
  %82 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %83 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %86 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ether_addr_copy(i32 %84, i32 %87)
  %89 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %89, i32 0, i32 3
  %91 = call i32 @atomic64_read(i32* %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %94 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %13, align 4
  %98 = ashr i32 %97, 8
  %99 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %100 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* %13, align 4
  %104 = ashr i32 %103, 16
  %105 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %106 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* %13, align 4
  %110 = ashr i32 %109, 24
  %111 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %112 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %13, align 4
  %116 = ashr i32 %115, 32
  %117 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %118 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 %116, i32* %120, align 4
  %121 = load i32, i32* %13, align 4
  %122 = ashr i32 %121, 40
  %123 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %124 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %122, i32* %126, align 4
  %127 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %128 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ieee80211_has_a4(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %75
  %133 = call i8* @cpu_to_be16(i32 28)
  %134 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %135 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %134, i32 0, i32 8
  store i8* %133, i8** %135, align 8
  br label %140

136:                                              ; preds = %75
  %137 = call i8* @cpu_to_be16(i32 22)
  %138 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %139 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %138, i32 0, i32 8
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %136, %132
  %141 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %142 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %145 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ether_addr_copy(i32 %143, i32 %146)
  %148 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %149 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %152 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ether_addr_copy(i32 %150, i32 %153)
  %155 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %156 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %159 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ether_addr_copy(i32 %157, i32 %160)
  %162 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %163 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @le16_to_cpu(i32 %164)
  %166 = and i32 %165, 51087
  %167 = call i8* @cpu_to_le16(i32 %166)
  %168 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %169 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  %170 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %171 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  %174 = and i32 %173, 15
  %175 = call i8* @cpu_to_le16(i32 %174)
  %176 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %177 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %176, i32 0, i32 3
  store i8* %175, i8** %177, align 8
  %178 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %179 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ieee80211_has_a4(i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %140
  %184 = load %struct.vnt_mic_hdr*, %struct.vnt_mic_hdr** %12, align 8
  %185 = getelementptr inbounds %struct.vnt_mic_hdr, %struct.vnt_mic_hdr* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %188 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ether_addr_copy(i32 %186, i32 %189)
  br label %191

191:                                              ; preds = %183, %140
  %192 = load i32*, i32** %8, align 8
  %193 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %194 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @WLAN_KEY_LEN_CCMP, align 4
  %197 = call i32 @memcpy(i32* %192, i32* %195, i32 %196)
  br label %199

198:                                              ; preds = %6
  br label %199

199:                                              ; preds = %74, %198, %191, %66, %65
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
