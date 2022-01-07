; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_halbtcoutsrc_Set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_halbtcoutsrc_Set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.adapter* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.adapter = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32 }
%struct.sta_info = type { i32 }

@WIFI_ASOC_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @halbtcoutsrc_Set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halbtcoutsrc_Set(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sta_info*, align 8
  %14 = alloca %struct.wlan_bssid_ex*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %8, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %11, align 8
  store i32 1, i32* %12, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = call i32 @halbtcoutsrc_IsBtCoexistAvailable(%struct.TYPE_14__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %158

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %155 [
    i32 139, label %30
    i32 137, label %36
    i32 138, label %42
    i32 135, label %48
    i32 133, label %54
    i32 140, label %60
    i32 134, label %66
    i32 136, label %72
    i32 128, label %78
    i32 132, label %84
    i32 145, label %90
    i32 151, label %91
    i32 129, label %94
    i32 131, label %100
    i32 130, label %106
    i32 144, label %112
    i32 146, label %115
    i32 143, label %118
    i32 147, label %121
    i32 141, label %126
    i32 142, label %151
    i32 148, label %152
    i32 149, label %153
    i32 150, label %154
  ]

30:                                               ; preds = %28
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  br label %156

36:                                               ; preds = %28
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  br label %156

42:                                               ; preds = %28
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  br label %156

48:                                               ; preds = %28
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  br label %156

54:                                               ; preds = %28
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 8
  br label %156

60:                                               ; preds = %28
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 4
  br label %156

66:                                               ; preds = %28
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 6
  store i32 %68, i32* %71, align 8
  br label %156

72:                                               ; preds = %28
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 7
  store i32 %74, i32* %77, align 4
  br label %156

78:                                               ; preds = %28
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 8
  store i32 %80, i32* %83, align 8
  br label %156

84:                                               ; preds = %28
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 9
  store i32 %86, i32* %89, align 4
  br label %156

90:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %156

91:                                               ; preds = %28
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = call i32 @halbtcoutsrc_AggregationCheck(%struct.TYPE_14__* %92)
  br label %156

94:                                               ; preds = %28
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 10
  store i32 %96, i32* %99, align 8
  br label %156

100:                                              ; preds = %28
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 11
  store i32 %102, i32* %105, align 4
  br label %156

106:                                              ; preds = %28
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 12
  store i32 %108, i32* %111, align 8
  br label %156

112:                                              ; preds = %28
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %114 = call i32 @halbtcoutsrc_LeaveLps(%struct.TYPE_14__* %113)
  br label %156

115:                                              ; preds = %28
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %117 = call i32 @halbtcoutsrc_EnterLps(%struct.TYPE_14__* %116)
  br label %156

118:                                              ; preds = %28
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = call i32 @halbtcoutsrc_NormalLps(%struct.TYPE_14__* %119)
  br label %156

121:                                              ; preds = %28
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @halbtcoutsrc_DisableLowPower(%struct.TYPE_14__* %122, i32 %124)
  br label %156

126:                                              ; preds = %28
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 13
  store i32 %128, i32* %131, align 4
  %132 = load %struct.adapter*, %struct.adapter** %9, align 8
  %133 = getelementptr inbounds %struct.adapter, %struct.adapter* %132, i32 0, i32 2
  %134 = load i32, i32* @WIFI_ASOC_STATE, align 4
  %135 = call i32 @check_fwstate(i32* %133, i32 %134)
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %150

137:                                              ; preds = %126
  %138 = load %struct.adapter*, %struct.adapter** %9, align 8
  %139 = getelementptr inbounds %struct.adapter, %struct.adapter* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  store %struct.wlan_bssid_ex* %141, %struct.wlan_bssid_ex** %14, align 8
  %142 = load %struct.adapter*, %struct.adapter** %9, align 8
  %143 = getelementptr inbounds %struct.adapter, %struct.adapter* %142, i32 0, i32 0
  %144 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %145 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call %struct.sta_info* @rtw_get_stainfo(i32* %143, i32 %146)
  store %struct.sta_info* %147, %struct.sta_info** %13, align 8
  %148 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %149 = call i32 @rtw_hal_update_ra_mask(%struct.sta_info* %148, i32 0)
  br label %150

150:                                              ; preds = %137, %126
  br label %156

151:                                              ; preds = %28
  store i32 0, i32* %12, align 4
  br label %156

152:                                              ; preds = %28
  store i32 0, i32* %12, align 4
  br label %156

153:                                              ; preds = %28
  store i32 0, i32* %12, align 4
  br label %156

154:                                              ; preds = %28
  store i32 0, i32* %12, align 4
  br label %156

155:                                              ; preds = %28
  store i32 0, i32* %12, align 4
  br label %156

156:                                              ; preds = %155, %154, %153, %152, %151, %150, %121, %118, %115, %112, %106, %100, %94, %91, %90, %84, %78, %72, %66, %60, %54, %48, %42, %36, %30
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %156, %27
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @halbtcoutsrc_IsBtCoexistAvailable(%struct.TYPE_14__*) #1

declare dso_local i32 @halbtcoutsrc_AggregationCheck(%struct.TYPE_14__*) #1

declare dso_local i32 @halbtcoutsrc_LeaveLps(%struct.TYPE_14__*) #1

declare dso_local i32 @halbtcoutsrc_EnterLps(%struct.TYPE_14__*) #1

declare dso_local i32 @halbtcoutsrc_NormalLps(%struct.TYPE_14__*) #1

declare dso_local i32 @halbtcoutsrc_DisableLowPower(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @check_fwstate(i32*, i32) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(i32*, i32) #1

declare dso_local i32 @rtw_hal_update_ra_mask(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
