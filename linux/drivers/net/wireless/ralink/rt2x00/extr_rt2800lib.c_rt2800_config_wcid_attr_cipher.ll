; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_wcid_attr_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_wcid_attr_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_crypto = type { i64, i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32 }
%struct.mac_iveiv_entry = type { i32* }

@SET_KEY = common dso_local global i64 0, align 8
@MAC_WCID_ATTRIBUTE_KEYTAB = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@MAC_WCID_ATTRIBUTE_CIPHER = common dso_local global i32 0, align 4
@MAC_WCID_ATTRIBUTE_CIPHER_EXT = common dso_local global i32 0, align 4
@MAC_WCID_ATTRIBUTE_RX_WIUDF = common dso_local global i32 0, align 4
@CIPHER_TKIP = common dso_local global i32 0, align 4
@CIPHER_TKIP_NO_MIC = common dso_local global i32 0, align 4
@CIPHER_AES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_crypto*, %struct.ieee80211_key_conf*)* @rt2800_config_wcid_attr_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_wcid_attr_cipher(%struct.rt2x00_dev* %0, %struct.rt2x00lib_crypto* %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rt2x00lib_crypto*, align 8
  %6 = alloca %struct.ieee80211_key_conf*, align 8
  %7 = alloca %struct.mac_iveiv_entry, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rt2x00lib_crypto* %1, %struct.rt2x00lib_crypto** %5, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %6, align 8
  %10 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MAC_WCID_ATTR_ENTRY(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %15 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SET_KEY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %3
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @MAC_WCID_ATTRIBUTE_KEYTAB, align 4
  %24 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @rt2x00_set_field32(i32* %9, i32 %23, i32 %32)
  %34 = load i32, i32* @MAC_WCID_ATTRIBUTE_CIPHER, align 4
  %35 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %36 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 7
  %39 = call i32 @rt2x00_set_field32(i32* %9, i32 %34, i32 %38)
  %40 = load i32, i32* @MAC_WCID_ATTRIBUTE_CIPHER_EXT, align 4
  %41 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %42 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 8
  %45 = ashr i32 %44, 3
  %46 = call i32 @rt2x00_set_field32(i32* %9, i32 %40, i32 %45)
  %47 = load i32, i32* @MAC_WCID_ATTRIBUTE_RX_WIUDF, align 4
  %48 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %49 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @rt2x00_set_field32(i32* %9, i32 %47, i32 %50)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %52, i32 %53, i32 %54)
  br label %72

56:                                               ; preds = %3
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @MAC_WCID_ATTRIBUTE_KEYTAB, align 4
  %61 = call i32 @rt2x00_set_field32(i32* %9, i32 %60, i32 0)
  %62 = load i32, i32* @MAC_WCID_ATTRIBUTE_CIPHER, align 4
  %63 = call i32 @rt2x00_set_field32(i32* %9, i32 %62, i32 0)
  %64 = load i32, i32* @MAC_WCID_ATTRIBUTE_CIPHER_EXT, align 4
  %65 = call i32 @rt2x00_set_field32(i32* %9, i32 %64, i32 0)
  %66 = load i32, i32* @MAC_WCID_ATTRIBUTE_RX_WIUDF, align 4
  %67 = call i32 @rt2x00_set_field32(i32* %9, i32 %66, i32 0)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %56, %19
  %73 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MAC_IVEIV_ENTRY(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %78 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SET_KEY, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %119

82:                                               ; preds = %72
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @rt2800_register_multiread(%struct.rt2x00_dev* %83, i32 %84, %struct.mac_iveiv_entry* %7, i32 8)
  %86 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %87 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CIPHER_TKIP, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %103, label %91

91:                                               ; preds = %82
  %92 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %93 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CIPHER_TKIP_NO_MIC, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %99 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CIPHER_AES, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97, %91, %82
  %104 = getelementptr inbounds %struct.mac_iveiv_entry, %struct.mac_iveiv_entry* %7, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, 32
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %97
  %110 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %111 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 6
  %114 = getelementptr inbounds %struct.mac_iveiv_entry, %struct.mac_iveiv_entry* %7, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %113
  store i32 %118, i32* %116, align 4
  br label %121

119:                                              ; preds = %72
  %120 = call i32 @memset(%struct.mac_iveiv_entry* %7, i32 0, i32 8)
  br label %121

121:                                              ; preds = %119, %109
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @rt2800_register_multiwrite(%struct.rt2x00_dev* %122, i32 %123, %struct.mac_iveiv_entry* %7, i32 8)
  ret void
}

declare dso_local i32 @MAC_WCID_ATTR_ENTRY(i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @MAC_IVEIV_ENTRY(i32) #1

declare dso_local i32 @rt2800_register_multiread(%struct.rt2x00_dev*, i32, %struct.mac_iveiv_entry*, i32) #1

declare dso_local i32 @memset(%struct.mac_iveiv_entry*, i32, i32) #1

declare dso_local i32 @rt2800_register_multiwrite(%struct.rt2x00_dev*, i32, %struct.mac_iveiv_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
