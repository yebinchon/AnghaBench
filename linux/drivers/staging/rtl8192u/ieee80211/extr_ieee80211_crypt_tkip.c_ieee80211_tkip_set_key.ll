; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt_tkip.c_ieee80211_tkip_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt_tkip.c_ieee80211_tkip_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tkip_data = type { i32, i32, i32, i32, i32, i32, %struct.crypto_sync_skcipher*, %struct.crypto_shash*, %struct.crypto_sync_skcipher*, %struct.crypto_shash* }
%struct.crypto_sync_skcipher = type { i32 }
%struct.crypto_shash = type { i32 }

@TKIP_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i8*)* @ieee80211_tkip_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tkip_set_key(i8* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ieee80211_tkip_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.crypto_shash*, align 8
  %13 = alloca %struct.crypto_sync_skcipher*, align 8
  %14 = alloca %struct.crypto_shash*, align 8
  %15 = alloca %struct.crypto_sync_skcipher*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.ieee80211_tkip_data*
  store %struct.ieee80211_tkip_data* %17, %struct.ieee80211_tkip_data** %10, align 8
  %18 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %18, i32 0, i32 9
  %20 = load %struct.crypto_shash*, %struct.crypto_shash** %19, align 8
  store %struct.crypto_shash* %20, %struct.crypto_shash** %12, align 8
  %21 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %21, i32 0, i32 8
  %23 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %22, align 8
  store %struct.crypto_sync_skcipher* %23, %struct.crypto_sync_skcipher** %13, align 8
  %24 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %24, i32 0, i32 7
  %26 = load %struct.crypto_shash*, %struct.crypto_shash** %25, align 8
  store %struct.crypto_shash* %26, %struct.crypto_shash** %14, align 8
  %27 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %27, i32 0, i32 6
  %29 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %28, align 8
  store %struct.crypto_sync_skcipher* %29, %struct.crypto_sync_skcipher** %15, align 8
  %30 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %34 = call i32 @memset(%struct.ieee80211_tkip_data* %33, i32 0, i32 56)
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %39 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %40 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %39, i32 0, i32 9
  store %struct.crypto_shash* %38, %struct.crypto_shash** %40, align 8
  %41 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %13, align 8
  %42 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %42, i32 0, i32 8
  store %struct.crypto_sync_skcipher* %41, %struct.crypto_sync_skcipher** %43, align 8
  %44 = load %struct.crypto_shash*, %struct.crypto_shash** %14, align 8
  %45 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %45, i32 0, i32 7
  store %struct.crypto_shash* %44, %struct.crypto_shash** %46, align 8
  %47 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %15, align 8
  %48 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %48, i32 0, i32 6
  store %struct.crypto_sync_skcipher* %47, %struct.crypto_sync_skcipher** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @TKIP_KEY_LEN, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %98

53:                                               ; preds = %4
  %54 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* @TKIP_KEY_LEN, align 4
  %59 = call i32 @memcpy(i32 %56, i8* %57, i32 %58)
  %60 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %63 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %97

66:                                               ; preds = %53
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 24
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 16
  %75 = or i32 %70, %74
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %75, %79
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %80, %83
  %85 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %86 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 8
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %90, %93
  %95 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %96 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %66, %53
  br label %106

98:                                               ; preds = %4
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %10, align 8
  %103 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  br label %105

104:                                              ; preds = %98
  store i32 -1, i32* %5, align 4
  br label %107

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %97
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %104
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @memset(%struct.ieee80211_tkip_data*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
