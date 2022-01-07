; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_pairwise_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_pairwise_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_crypto = type { i64, i64, i32, i32, i32 }
%struct.ieee80211_key_conf = type { i64 }
%struct.hw_key_entry = type { i32, i32, i32 }

@SET_KEY = common dso_local global i64 0, align 8
@WCID_END = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_config_pairwise_key(%struct.rt2x00_dev* %0, %struct.rt2x00lib_crypto* %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00lib_crypto*, align 8
  %7 = alloca %struct.ieee80211_key_conf*, align 8
  %8 = alloca %struct.hw_key_entry, align 4
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.rt2x00lib_crypto* %1, %struct.rt2x00lib_crypto** %6, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %7, align 8
  %10 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %11 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SET_KEY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %3
  %16 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %17 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WCID_END, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOSPC, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %60

24:                                               ; preds = %15
  %25 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %26 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %8, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %33 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @memcpy(i32 %31, i32 %34, i32 4)
  %36 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %8, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %39 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %37, i32 %40, i32 4)
  %42 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %45 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(i32 %43, i32 %46, i32 4)
  %48 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @PAIRWISE_KEY_ENTRY(i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @rt2800_register_multiwrite(%struct.rt2x00_dev* %52, i32 %53, %struct.hw_key_entry* %8, i32 12)
  br label %55

55:                                               ; preds = %24, %3
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %57 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %58 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %59 = call i32 @rt2800_config_wcid_attr_cipher(%struct.rt2x00_dev* %56, %struct.rt2x00lib_crypto* %57, %struct.ieee80211_key_conf* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %21
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @PAIRWISE_KEY_ENTRY(i64) #1

declare dso_local i32 @rt2800_register_multiwrite(%struct.rt2x00_dev*, i32, %struct.hw_key_entry*, i32) #1

declare dso_local i32 @rt2800_config_wcid_attr_cipher(%struct.rt2x00_dev*, %struct.rt2x00lib_crypto*, %struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
