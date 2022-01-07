; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_shared_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_shared_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_crypto = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_key_conf = type { i32, i32 }
%struct.hw_key_entry = type { i32, i32, i32 }
%struct.rt2x00_field32 = type { i32, i32 }

@SET_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_config_shared_key(%struct.rt2x00_dev* %0, %struct.rt2x00lib_crypto* %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rt2x00lib_crypto*, align 8
  %6 = alloca %struct.ieee80211_key_conf*, align 8
  %7 = alloca %struct.hw_key_entry, align 4
  %8 = alloca %struct.rt2x00_field32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rt2x00lib_crypto* %1, %struct.rt2x00lib_crypto** %5, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %6, align 8
  %11 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %12 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SET_KEY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %3
  %17 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %18 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 4, %19
  %21 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %7, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %30 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %28, i32 %31, i32 4)
  %33 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %36 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memcpy(i32 %34, i32 %37, i32 4)
  %39 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %42 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %40, i32 %43, i32 4)
  %45 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SHARED_KEY_ENTRY(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @rt2800_register_multiwrite(%struct.rt2x00_dev* %49, i32 %50, %struct.hw_key_entry* %7, i32 12)
  br label %52

52:                                               ; preds = %16, %3
  %53 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = srem i32 %55, 8
  %57 = mul nsw i32 4, %56
  %58 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %8, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 7, %60
  %62 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %8, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 8
  %67 = call i32 @SHARED_KEY_MODE_ENTRY(i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %72 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SET_KEY, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %78 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = bitcast %struct.rt2x00_field32* %8 to i64*
  %82 = load i64, i64* %81, align 4
  %83 = call i32 @rt2x00_set_field32(i32* %10, i64 %82, i32 %80)
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %84, i32 %85, i32 %86)
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %89 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %90 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %93 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @rt2800_config_wcid(%struct.rt2x00_dev* %88, i32 %91, i32 %94)
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %97 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %98 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %101 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @rt2800_config_wcid_attr_bssidx(%struct.rt2x00_dev* %96, i32 %99, i32 %102)
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %105 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %106 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %107 = call i32 @rt2800_config_wcid_attr_cipher(%struct.rt2x00_dev* %104, %struct.rt2x00lib_crypto* %105, %struct.ieee80211_key_conf* %106)
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @SHARED_KEY_ENTRY(i32) #1

declare dso_local i32 @rt2800_register_multiwrite(%struct.rt2x00_dev*, i32, %struct.hw_key_entry*, i32) #1

declare dso_local i32 @SHARED_KEY_MODE_ENTRY(i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i64, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_config_wcid(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_config_wcid_attr_bssidx(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_config_wcid_attr_cipher(%struct.rt2x00_dev*, %struct.rt2x00lib_crypto*, %struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
