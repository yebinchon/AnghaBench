; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_rx_frame_decrypt_msdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_rx_frame_decrypt_msdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i64, i64 }
%struct.sk_buff = type { i64, i64 }
%struct.lib80211_crypt_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, i32, i32, i32)* }
%struct.rtllib_hdr_4addr = type { i32, i32 }
%struct.cb_desc = type { i32 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"MSDU decryption/MIC verification failed (SA= %pM keyidx=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*, %struct.sk_buff*, i32, %struct.lib80211_crypt_data*)* @rtllib_rx_frame_decrypt_msdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_rx_frame_decrypt_msdu(%struct.rtllib_device* %0, %struct.sk_buff* %1, i32 %2, %struct.lib80211_crypt_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtllib_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lib80211_crypt_data*, align 8
  %10 = alloca %struct.rtllib_hdr_4addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cb_desc*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.lib80211_crypt_data* %3, %struct.lib80211_crypt_data** %9, align 8
  %14 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %9, align 8
  %15 = icmp eq %struct.lib80211_crypt_data* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %9, align 8
  %18 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.sk_buff*, i32, i32, i32)*, i32 (%struct.sk_buff*, i32, i32, i32)** %20, align 8
  %22 = icmp eq i32 (%struct.sk_buff*, i32, i32, i32)* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %4
  store i32 0, i32* %5, align 4
  br label %86

24:                                               ; preds = %16
  %25 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %26 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %34 = add nsw i64 %32, %33
  %35 = inttoptr i64 %34 to %struct.cb_desc*
  store %struct.cb_desc* %35, %struct.cb_desc** %13, align 8
  %36 = load %struct.cb_desc*, %struct.cb_desc** %13, align 8
  %37 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %39 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load %struct.cb_desc*, %struct.cb_desc** %13, align 8
  %44 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %29
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.rtllib_hdr_4addr*
  store %struct.rtllib_hdr_4addr* %50, %struct.rtllib_hdr_4addr** %10, align 8
  %51 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %10, align 8
  %52 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = call i32 @rtllib_get_hdrlen(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %9, align 8
  %57 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %56, i32 0, i32 0
  %58 = call i32 @atomic_inc(i32* %57)
  %59 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %9, align 8
  %60 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.sk_buff*, i32, i32, i32)*, i32 (%struct.sk_buff*, i32, i32, i32)** %62, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %9, align 8
  %68 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 %63(%struct.sk_buff* %64, i32 %65, i32 %66, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %9, align 8
  %72 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %71, i32 0, i32 0
  %73 = call i32 @atomic_dec(i32* %72)
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %46
  %77 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %78 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %10, align 8
  %81 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @netdev_dbg(i32 %79, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83)
  store i32 -1, i32* %5, align 4
  br label %86

85:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %76, %23
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @rtllib_get_hdrlen(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
