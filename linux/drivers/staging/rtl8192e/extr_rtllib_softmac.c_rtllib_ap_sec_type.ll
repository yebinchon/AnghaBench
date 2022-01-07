; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_ap_sec_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_ap_sec_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32*, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@rtllib_ap_sec_type.ccmp_ie = internal global [4 x i32] [i32 0, i32 80, i32 242, i32 4], align 16
@rtllib_ap_sec_type.ccmp_rsn_ie = internal global [4 x i32] [i32 0, i32 15, i32 172, i32 4], align 16
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"R-WEP\00", align 1
@SEC_ALG_WEP = common dso_local global i32 0, align 4
@SEC_ALG_CCMP = common dso_local global i32 0, align 4
@SEC_ALG_TKIP = common dso_local global i32 0, align 4
@SEC_ALG_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_ap_sec_type(%struct.rtllib_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lib80211_crypt_data*, align 8
  %6 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  %7 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %8 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %11 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %12, align 8
  %14 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %15 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, i64 %17
  %19 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %18, align 8
  store %struct.lib80211_crypt_data* %19, %struct.lib80211_crypt_data** %5, align 8
  %20 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %21 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %1
  %28 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %29 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %5, align 8
  %34 = icmp ne %struct.lib80211_crypt_data* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %5, align 8
  %37 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %5, align 8
  %42 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @strcmp(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br label %48

48:                                               ; preds = %40, %35, %32, %27
  %49 = phi i1 [ false, %35 ], [ false, %32 ], [ false, %27 ], [ %47, %40 ]
  br label %50

50:                                               ; preds = %48, %1
  %51 = phi i1 [ true, %1 ], [ %49, %48 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @SEC_ALG_WEP, align 4
  store i32 %59, i32* %2, align 4
  br label %97

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %65 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 221
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %72 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 14
  %75 = call i32 @memcmp(i32* %74, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rtllib_ap_sec_type.ccmp_ie, i64 0, i64 0), i32 4)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %70, %63
  %78 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %79 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 48
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %86 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 10
  %89 = call i32 @memcmp(i32* %88, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rtllib_ap_sec_type.ccmp_rsn_ie, i64 0, i64 0), i32 4)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %84, %70
  %92 = load i32, i32* @SEC_ALG_CCMP, align 4
  store i32 %92, i32* %2, align 4
  br label %97

93:                                               ; preds = %84, %77
  %94 = load i32, i32* @SEC_ALG_TKIP, align 4
  store i32 %94, i32* %2, align 4
  br label %97

95:                                               ; preds = %60
  %96 = load i32, i32* @SEC_ALG_NONE, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %93, %91, %58
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
