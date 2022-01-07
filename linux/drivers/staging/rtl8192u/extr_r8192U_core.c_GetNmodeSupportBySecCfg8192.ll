; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_GetNmodeSupportBySecCfg8192.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_GetNmodeSupportBySecCfg8192.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.ieee80211_device* }
%struct.ieee80211_device = type { i32, i64, i32*, i64, %struct.ieee80211_crypt_data**, %struct.ieee80211_network }
%struct.ieee80211_crypt_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_network = type { i32 }

@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@ccmp_ie = common dso_local global i32 0, align 4
@ccmp_rsn_ie = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @GetNmodeSupportBySecCfg8192 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetNmodeSupportBySecCfg8192(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.ieee80211_network*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_crypt_data*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %4, align 8
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_device*, %struct.ieee80211_device** %13, align 8
  store %struct.ieee80211_device* %14, %struct.ieee80211_device** %5, align 8
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %15, i32 0, i32 5
  store %struct.ieee80211_network* %16, %struct.ieee80211_network** %6, align 8
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %20, i32 0, i32 4
  %22 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %21, align 8
  %23 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %22, i64 %25
  %27 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %26, align 8
  store %struct.ieee80211_crypt_data* %27, %struct.ieee80211_crypt_data** %8, align 8
  %28 = load %struct.ieee80211_network*, %struct.ieee80211_network** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %1
  %35 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %8, align 8
  %41 = icmp ne %struct.ieee80211_crypt_data* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @strcmp(i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br label %55

55:                                               ; preds = %47, %42, %39, %34
  %56 = phi i1 [ false, %42 ], [ false, %39 ], [ false, %34 ], [ %54, %47 ]
  br label %57

57:                                               ; preds = %55, %1
  %58 = phi i1 [ true, %1 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %102

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %66
  %70 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 221
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 14
  %81 = load i32, i32* @ccmp_ie, align 4
  %82 = call i32 @memcmp(i32* %80, i32 %81, i32 4)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %76, %69
  %85 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %86 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 48
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %93 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 10
  %96 = load i32, i32* @ccmp_rsn_ie, align 4
  %97 = call i32 @memcmp(i32* %95, i32 %96, i32 4)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91, %76
  store i32 1, i32* %2, align 4
  br label %102

100:                                              ; preds = %91, %84
  store i32 0, i32* %2, align 4
  br label %102

101:                                              ; preds = %66
  store i32 1, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %100, %99, %65
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
