; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_update_sta_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_update_sta_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { i32, i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlme_priv = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64 }
%struct.sta_info = type { i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IEEE80211_HT_CAP_AMPDU_DENSITY = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_sta_info(%struct.adapter* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  store %struct.mlme_priv* %9, %struct.mlme_priv** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store %struct.mlme_ext_priv* %11, %struct.mlme_ext_priv** %6, align 8
  %12 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %12, i32 0, i32 2
  store %struct.mlme_ext_info* %13, %struct.mlme_ext_info** %7, align 8
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %16 = call i32 @VCS_update(%struct.adapter* %14, %struct.sta_info* %15)
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %96

22:                                               ; preds = %2
  %23 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %27 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %34 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IEEE80211_HT_CAP_AMPDU_DENSITY, align 4
  %40 = and i32 %38, %39
  %41 = ashr i32 %40, 2
  %42 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.adapter*, %struct.adapter** %3, align 8
  %46 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %47 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %46, i32 0, i32 0
  %48 = load i32, i32* @CHANNEL_WIDTH_20, align 4
  %49 = call i64 @support_short_GI(%struct.adapter* %45, %struct.TYPE_13__* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %22
  %52 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %22
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %58 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %57, i32 0, i32 0
  %59 = load i32, i32* @CHANNEL_WIDTH_40, align 4
  %60 = call i64 @support_short_GI(%struct.adapter* %56, %struct.TYPE_13__* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %64 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  %69 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %70 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %74 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 11
  store i32 %72, i32* %75, align 4
  %76 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %77 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %81 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 10
  store i32 %79, i32* %82, align 4
  %83 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %84 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %88 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 9
  store i32 %86, i32* %89, align 4
  %90 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %91 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 8
  %93 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %94 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %93, i32 0, i32 0
  %95 = call i32 @memcpy(i32* %92, %struct.TYPE_13__* %94, i32 4)
  br label %111

96:                                               ; preds = %2
  %97 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %98 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 4
  %100 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %101 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %104 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  store i32 0, i32* %105, align 4
  %106 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %107 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  store i32 0, i32* %108, align 4
  %109 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %110 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %96, %66
  %112 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %113 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %116 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 7
  store i32 %114, i32* %117, align 4
  %118 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %119 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 5
  store i32 0, i32* %120, align 4
  %121 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %122 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 6
  store i32 0, i32* %123, align 4
  %124 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %125 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %128 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %130 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %111
  %135 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %136 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %135, i32 0, i32 0
  store i32 1, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %111
  %138 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %139 = call i32 @update_ldpc_stbc_cap(%struct.sta_info* %138)
  %140 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %141 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %140, i32 0, i32 1
  %142 = call i32 @spin_lock_bh(i32* %141)
  %143 = load i32, i32* @_FW_LINKED, align 4
  %144 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %145 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %147 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %146, i32 0, i32 1
  %148 = call i32 @spin_unlock_bh(i32* %147)
  ret void
}

declare dso_local i32 @VCS_update(%struct.adapter*, %struct.sta_info*) #1

declare dso_local i64 @support_short_GI(%struct.adapter*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @update_ldpc_stbc_cap(%struct.sta_info*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
