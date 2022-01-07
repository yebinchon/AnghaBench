; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_config_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_config_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_crypto = type { i64, i32, i32 }
%struct.ieee80211_key_conf = type { i64, i64, i32, i32 }

@SET_KEY = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TXRX_CSR0_KEY_ID = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@TXRX_CSR0 = common dso_local global i32 0, align 4
@TXRX_CSR0_ALGORITHM = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ENOSPC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@TXRX_CSR0_IV_OFFSET = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@IEEE80211_HEADER = common dso_local global i32 0, align 4
@DISABLE_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, %struct.rt2x00lib_crypto*, %struct.ieee80211_key_conf*)* @rt2500usb_config_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500usb_config_key(%struct.rt2x00_dev* %0, %struct.rt2x00lib_crypto* %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00lib_crypto*, align 8
  %7 = alloca %struct.ieee80211_key_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.rt2x00lib_crypto* %1, %struct.rt2x00lib_crypto** %6, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %7, align 8
  %11 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %12 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SET_KEY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %105

16:                                               ; preds = %3
  %17 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22, %16
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %155

36:                                               ; preds = %28, %22
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TXRX_CSR0_KEY_ID, i32 0, i32 0), align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %39 = load i32, i32* @TXRX_CSR0, align 4
  %40 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TXRX_CSR0_ALGORITHM, i32 0, i32 0), align 4
  %43 = call i32 @rt2x00_get_field16(i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %36
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @ENOSPC, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %155

56:                                               ; preds = %49, %36
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TXRX_CSR0_KEY_ID, i32 0, i32 0), align 4
  %59 = call i32 @rt2x00_get_field16(i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @ffz(i32 %63)
  br label %66

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi i32 [ %64, %62 ], [ 0, %65 ]
  %68 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %69 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %78 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @EOPNOTSUPP, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %155

85:                                               ; preds = %76, %66
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %87 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @KEY_ENTRY(i32 %89)
  %91 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %92 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @rt2500usb_register_multiwrite(%struct.rt2x00_dev* %86, i32 %90, i32 %93, i32 4)
  %95 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %96 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %101 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %102 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %85, %3
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %107 = load i32, i32* @TXRX_CSR0, align 4
  %108 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %106, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %110 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TXRX_CSR0_ALGORITHM, i32 0, i32 0), align 4
  %113 = call i32 @rt2x00_set_field16(i32* %9, i32 %112, i32 %111)
  %114 = load i32, i32* @IEEE80211_HEADER, align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TXRX_CSR0_IV_OFFSET, i32 0, i32 0), align 4
  %116 = call i32 @rt2x00_set_field16(i32* %9, i32 %115, i32 %114)
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TXRX_CSR0_KEY_ID, i32 0, i32 0), align 4
  %119 = call i32 @rt2x00_get_field16(i32 %117, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %121 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SET_KEY, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %105
  %126 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %127 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = shl i32 1, %128
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  br label %147

132:                                              ; preds = %105
  %133 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %134 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @DISABLE_KEY, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %140 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = shl i32 1, %141
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %8, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %138, %132
  br label %147

147:                                              ; preds = %146, %125
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TXRX_CSR0_KEY_ID, i32 0, i32 0), align 4
  %150 = call i32 @rt2x00_set_field16(i32* %9, i32 %149, i32 %148)
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %152 = load i32, i32* @TXRX_CSR0, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %151, i32 %152, i32 %153)
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %147, %82, %53, %33
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @rt2500usb_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @rt2500usb_register_multiwrite(%struct.rt2x00_dev*, i32, i32, i32) #1

declare dso_local i32 @KEY_ENTRY(i32) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i32 @rt2500usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
