; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_cfg_scan_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_cfg_scan_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_rcvd_net_info = type { i64, i32, i32, i64 }
%struct.wilc_priv = type { i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_bss = type { i32 }
%struct.cfg80211_scan_info = type { i32 }

@SCAN_EVENT_NETWORK_FOUND = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SCAN_EVENT_DONE = common dso_local global i32 0, align 4
@SCAN_EVENT_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.wilc_rcvd_net_info*, i8*)* @cfg_scan_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_scan_result(i32 %0, %struct.wilc_rcvd_net_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilc_rcvd_net_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wilc_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca %struct.cfg80211_bss*, align 8
  %11 = alloca %struct.wiphy*, align 8
  %12 = alloca %struct.cfg80211_scan_info, align 4
  %13 = alloca %struct.cfg80211_scan_info, align 4
  store i32 %0, i32* %4, align 4
  store %struct.wilc_rcvd_net_info* %1, %struct.wilc_rcvd_net_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.wilc_priv*
  store %struct.wilc_priv* %15, %struct.wilc_priv** %7, align 8
  %16 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %17 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %129

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SCAN_EVENT_NETWORK_FOUND, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %21
  %26 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %27 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.wiphy*, %struct.wiphy** %31, align 8
  store %struct.wiphy* %32, %struct.wiphy** %11, align 8
  %33 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %34 = icmp ne %struct.wiphy* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.wilc_rcvd_net_info*, %struct.wilc_rcvd_net_info** %5, align 8
  %37 = icmp ne %struct.wilc_rcvd_net_info* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %25
  br label %129

39:                                               ; preds = %35
  %40 = load %struct.wilc_rcvd_net_info*, %struct.wilc_rcvd_net_info** %5, align 8
  %41 = getelementptr inbounds %struct.wilc_rcvd_net_info, %struct.wilc_rcvd_net_info* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %45 = call i32 @ieee80211_channel_to_frequency(i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %46, i32 %47)
  store %struct.ieee80211_channel* %48, %struct.ieee80211_channel** %9, align 8
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %50 = icmp ne %struct.ieee80211_channel* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  br label %129

52:                                               ; preds = %39
  %53 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %55 = load %struct.wilc_rcvd_net_info*, %struct.wilc_rcvd_net_info** %5, align 8
  %56 = getelementptr inbounds %struct.wilc_rcvd_net_info, %struct.wilc_rcvd_net_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.wilc_rcvd_net_info*, %struct.wilc_rcvd_net_info** %5, align 8
  %59 = getelementptr inbounds %struct.wilc_rcvd_net_info, %struct.wilc_rcvd_net_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.wilc_rcvd_net_info*, %struct.wilc_rcvd_net_info** %5, align 8
  %62 = getelementptr inbounds %struct.wilc_rcvd_net_info, %struct.wilc_rcvd_net_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = mul nsw i32 %64, 100
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.cfg80211_bss* @cfg80211_inform_bss_frame(%struct.wiphy* %53, %struct.ieee80211_channel* %54, i32 %57, i32 %60, i32 %65, i32 %66)
  store %struct.cfg80211_bss* %67, %struct.cfg80211_bss** %10, align 8
  %68 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %10, align 8
  %69 = icmp ne %struct.cfg80211_bss* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %52
  %71 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %72 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %10, align 8
  %73 = call i32 @cfg80211_put_bss(%struct.wiphy* %71, %struct.cfg80211_bss* %72)
  br label %74

74:                                               ; preds = %70, %52
  br label %129

75:                                               ; preds = %21
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @SCAN_EVENT_DONE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %75
  %80 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %81 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %80, i32 0, i32 1
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %84 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = bitcast %struct.cfg80211_scan_info* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %88, i8 0, i64 4, i1 false)
  %89 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %90 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @cfg80211_scan_done(i32* %91, %struct.cfg80211_scan_info* %12)
  %93 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %94 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %96 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %87, %79
  %98 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %99 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  br label %128

101:                                              ; preds = %75
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @SCAN_EVENT_ABORTED, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %101
  %106 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %107 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %106, i32 0, i32 1
  %108 = call i32 @mutex_lock(i32* %107)
  %109 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %110 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %105
  %114 = bitcast %struct.cfg80211_scan_info* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %114, i8 0, i64 4, i1 false)
  %115 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %116 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @cfg80211_scan_done(i32* %117, %struct.cfg80211_scan_info* %13)
  %119 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %120 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %122 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  br label %123

123:                                              ; preds = %113, %105
  %124 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %125 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  br label %127

127:                                              ; preds = %123, %101
  br label %128

128:                                              ; preds = %127, %97
  br label %129

129:                                              ; preds = %20, %38, %51, %128, %74
  ret void
}

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_inform_bss_frame(%struct.wiphy*, %struct.ieee80211_channel*, i32, i32, i32, i32) #1

declare dso_local i32 @cfg80211_put_bss(%struct.wiphy*, %struct.cfg80211_bss*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_scan_done(i32*, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
