; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_pairwise_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_pairwise_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_crypto = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_key_conf = type { i32, i32 }
%struct.hw_pairwise_ta_entry = type { i32, %struct.hw_pairwise_ta_entry*, %struct.hw_pairwise_ta_entry*, %struct.hw_pairwise_ta_entry* }
%struct.hw_key_entry = type { i32, %struct.hw_key_entry*, %struct.hw_key_entry*, %struct.hw_key_entry* }

@SET_KEY = common dso_local global i64 0, align 8
@SEC_CSR2 = common dso_local global i32 0, align 4
@SEC_CSR3 = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SEC_CSR4 = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@DISABLE_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, %struct.rt2x00lib_crypto*, %struct.ieee80211_key_conf*)* @rt61pci_config_pairwise_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_config_pairwise_key(%struct.rt2x00_dev* %0, %struct.rt2x00lib_crypto* %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00lib_crypto*, align 8
  %7 = alloca %struct.ieee80211_key_conf*, align 8
  %8 = alloca %struct.hw_pairwise_ta_entry, align 8
  %9 = alloca %struct.hw_key_entry, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.rt2x00lib_crypto* %1, %struct.rt2x00lib_crypto** %6, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %7, align 8
  %12 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %13 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SET_KEY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %118

17:                                               ; preds = %3
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %19 = load i32, i32* @SEC_CSR2, align 4
  %20 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %27, i32 0, i32 0
  store i32 32, i32* %28, align 4
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %30 = load i32, i32* @SEC_CSR3, align 4
  %31 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @ENOSPC, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %193

40:                                               ; preds = %34, %26
  br label %41

41:                                               ; preds = %40, %23, %17
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @ffz(i32 %45)
  br label %48

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32 [ %46, %44 ], [ 0, %47 ]
  %50 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %9, i32 0, i32 3
  %55 = load %struct.hw_key_entry*, %struct.hw_key_entry** %54, align 8
  %56 = bitcast %struct.hw_key_entry* %55 to %struct.hw_pairwise_ta_entry*
  %57 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %58 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(%struct.hw_pairwise_ta_entry* %56, i32 %59, i32 8)
  %61 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %9, i32 0, i32 2
  %62 = load %struct.hw_key_entry*, %struct.hw_key_entry** %61, align 8
  %63 = bitcast %struct.hw_key_entry* %62 to %struct.hw_pairwise_ta_entry*
  %64 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %65 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memcpy(%struct.hw_pairwise_ta_entry* %63, i32 %66, i32 8)
  %68 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %9, i32 0, i32 1
  %69 = load %struct.hw_key_entry*, %struct.hw_key_entry** %68, align 8
  %70 = bitcast %struct.hw_key_entry* %69 to %struct.hw_pairwise_ta_entry*
  %71 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %72 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(%struct.hw_pairwise_ta_entry* %70, i32 %73, i32 8)
  %75 = call i32 @memset(%struct.hw_pairwise_ta_entry* %8, i32 0, i32 32)
  %76 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %77 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ETH_ALEN, align 4
  %80 = call i32 @memcpy(%struct.hw_pairwise_ta_entry* %8, i32 %78, i32 %79)
  %81 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %82 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.hw_pairwise_ta_entry, %struct.hw_pairwise_ta_entry* %8, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %86 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PAIRWISE_KEY_ENTRY(i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = bitcast %struct.hw_key_entry* %9 to %struct.hw_pairwise_ta_entry*
  %92 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %89, i32 %90, %struct.hw_pairwise_ta_entry* %91, i32 32)
  %93 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %94 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PAIRWISE_TA_ENTRY(i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %97, i32 %98, %struct.hw_pairwise_ta_entry* %8, i32 32)
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %101 = load i32, i32* @SEC_CSR4, align 4
  %102 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %100, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %104 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 1, %105
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %11, align 4
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %110 = load i32, i32* @SEC_CSR4, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %109, i32 %110, i32 %111)
  %113 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %114 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %48, %3
  %119 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %120 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 32
  br i1 %122, label %123, label %157

123:                                              ; preds = %118
  %124 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 1, %126
  store i32 %127, i32* %10, align 4
  %128 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %129 = load i32, i32* @SEC_CSR2, align 4
  %130 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %128, i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %132 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SET_KEY, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %123
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %152

140:                                              ; preds = %123
  %141 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %142 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @DISABLE_KEY, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load i32, i32* %10, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %11, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %146, %140
  br label %152

152:                                              ; preds = %151, %136
  %153 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %154 = load i32, i32* @SEC_CSR2, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %153, i32 %154, i32 %155)
  br label %192

157:                                              ; preds = %118
  %158 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %159 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 32
  %162 = shl i32 1, %161
  store i32 %162, i32* %10, align 4
  %163 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %164 = load i32, i32* @SEC_CSR3, align 4
  %165 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %163, i32 %164)
  store i32 %165, i32* %11, align 4
  %166 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %167 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @SET_KEY, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %157
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %11, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %11, align 4
  br label %187

175:                                              ; preds = %157
  %176 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %177 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @DISABLE_KEY, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %175
  %182 = load i32, i32* %10, align 4
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %11, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %11, align 4
  br label %186

186:                                              ; preds = %181, %175
  br label %187

187:                                              ; preds = %186, %171
  %188 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %189 = load i32, i32* @SEC_CSR3, align 4
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %187, %152
  store i32 0, i32* %4, align 4
  br label %193

193:                                              ; preds = %192, %37
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @memcpy(%struct.hw_pairwise_ta_entry*, i32, i32) #1

declare dso_local i32 @memset(%struct.hw_pairwise_ta_entry*, i32, i32) #1

declare dso_local i32 @PAIRWISE_KEY_ENTRY(i32) #1

declare dso_local i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev*, i32, %struct.hw_pairwise_ta_entry*, i32) #1

declare dso_local i32 @PAIRWISE_TA_ENTRY(i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
