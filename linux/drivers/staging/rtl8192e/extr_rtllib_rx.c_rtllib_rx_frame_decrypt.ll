; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_rx_frame_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_rx_frame_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i64, i64 }
%struct.sk_buff = type { i32*, i64 }
%struct.lib80211_crypt_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, i32, i32)* }
%struct.rtllib_hdr_4addr = type { i32, i32 }
%struct.cb_desc = type { i32 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"decryption failed (SA= %pM) res=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Decryption failed ICV mismatch (key %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*, %struct.sk_buff*, %struct.lib80211_crypt_data*)* @rtllib_rx_frame_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_rx_frame_decrypt(%struct.rtllib_device* %0, %struct.sk_buff* %1, %struct.lib80211_crypt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.lib80211_crypt_data*, align 8
  %8 = alloca %struct.rtllib_hdr_4addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cb_desc*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.lib80211_crypt_data* %2, %struct.lib80211_crypt_data** %7, align 8
  %12 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %13 = icmp eq %struct.lib80211_crypt_data* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %16 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.sk_buff*, i32, i32)*, i32 (%struct.sk_buff*, i32, i32)** %18, align 8
  %20 = icmp eq i32 (%struct.sk_buff*, i32, i32)* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %101

22:                                               ; preds = %14
  %23 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %24 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %32 = add nsw i64 %30, %31
  %33 = inttoptr i64 %32 to %struct.cb_desc*
  store %struct.cb_desc* %33, %struct.cb_desc** %11, align 8
  %34 = load %struct.cb_desc*, %struct.cb_desc** %11, align 8
  %35 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %37 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load %struct.cb_desc*, %struct.cb_desc** %11, align 8
  %42 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %27
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = bitcast i32* %47 to %struct.rtllib_hdr_4addr*
  store %struct.rtllib_hdr_4addr* %48, %struct.rtllib_hdr_4addr** %8, align 8
  %49 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %8, align 8
  %50 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = call i32 @rtllib_get_hdrlen(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %55 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %54, i32 0, i32 0
  %56 = call i32 @atomic_inc(i32* %55)
  %57 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %58 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.sk_buff*, i32, i32)*, i32 (%struct.sk_buff*, i32, i32)** %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %65 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 %61(%struct.sk_buff* %62, i32 %63, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %69 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %68, i32 0, i32 0
  %70 = call i32 @atomic_dec(i32* %69)
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %44
  %74 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %75 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %8, align 8
  %78 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, -2
  br i1 %83, label %84, label %98

84:                                               ; preds = %73
  %85 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %86 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 6
  %97 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %84, %73
  store i32 -1, i32* %4, align 4
  br label %101

99:                                               ; preds = %44
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %98, %21
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @rtllib_get_hdrlen(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
