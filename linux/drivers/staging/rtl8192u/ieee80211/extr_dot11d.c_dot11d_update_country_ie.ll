; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_dot11d.c_dot11d_update_country_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_dot11d.c_dot11d_update_country_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.rt_dot11d_info = type { i32*, i32*, i32, i32, i32 }
%struct.chnl_txpower_triple = type { i64, i32, i32 }

@MAX_CHANNEL_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"dot11d_update_country_ie(): Invalid country IE, skip it........1\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"dot11d_update_country_ie(): Invalid country IE, skip it........2\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Channel List:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DOT11D_STATE_LEARNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dot11d_update_country_ie(%struct.ieee80211_device* %0, i64* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.rt_dot11d_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.chnl_txpower_triple*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %16 = call %struct.rt_dot11d_info* @GET_DOT11D_INFO(%struct.ieee80211_device* %15)
  store %struct.rt_dot11d_info* %16, %struct.rt_dot11d_info** %9, align 8
  %17 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %9, align 8
  %18 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @memset(i32* %19, i32 0, i32 %21)
  %23 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %9, align 8
  %24 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @memset(i32* %25, i32 255, i32 %27)
  store i64 0, i64* %13, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 3
  %31 = sdiv i32 %30, 3
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 3
  %35 = bitcast i64* %34 to %struct.chnl_txpower_triple*
  store %struct.chnl_txpower_triple* %35, %struct.chnl_txpower_triple** %14, align 8
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %111, %4
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %114

40:                                               ; preds = %36
  %41 = load i64, i64* %13, align 8
  %42 = load %struct.chnl_txpower_triple*, %struct.chnl_txpower_triple** %14, align 8
  %43 = getelementptr inbounds %struct.chnl_txpower_triple, %struct.chnl_txpower_triple* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp uge i64 %41, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netdev_err(i32 %49, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %162

51:                                               ; preds = %40
  %52 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.chnl_txpower_triple*, %struct.chnl_txpower_triple** %14, align 8
  %55 = getelementptr inbounds %struct.chnl_txpower_triple, %struct.chnl_txpower_triple* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.chnl_txpower_triple*, %struct.chnl_txpower_triple** %14, align 8
  %58 = getelementptr inbounds %struct.chnl_txpower_triple, %struct.chnl_txpower_triple* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add i64 %56, %60
  %62 = icmp ult i64 %53, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @netdev_err(i32 %66, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %162

68:                                               ; preds = %51
  store i64 0, i64* %11, align 8
  br label %69

69:                                               ; preds = %103, %68
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.chnl_txpower_triple*, %struct.chnl_txpower_triple** %14, align 8
  %72 = getelementptr inbounds %struct.chnl_txpower_triple, %struct.chnl_txpower_triple* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %70, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %69
  %77 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %9, align 8
  %78 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.chnl_txpower_triple*, %struct.chnl_txpower_triple** %14, align 8
  %81 = getelementptr inbounds %struct.chnl_txpower_triple, %struct.chnl_txpower_triple* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %82, %83
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  store i32 1, i32* %85, align 4
  %86 = load %struct.chnl_txpower_triple*, %struct.chnl_txpower_triple** %14, align 8
  %87 = getelementptr inbounds %struct.chnl_txpower_triple, %struct.chnl_txpower_triple* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %9, align 8
  %90 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.chnl_txpower_triple*, %struct.chnl_txpower_triple** %14, align 8
  %93 = getelementptr inbounds %struct.chnl_txpower_triple, %struct.chnl_txpower_triple* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %94, %95
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  store i32 %88, i32* %97, align 4
  %98 = load %struct.chnl_txpower_triple*, %struct.chnl_txpower_triple** %14, align 8
  %99 = getelementptr inbounds %struct.chnl_txpower_triple, %struct.chnl_txpower_triple* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %100, %101
  store i64 %102, i64* %13, align 8
  br label %103

103:                                              ; preds = %76
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %11, align 8
  br label %69

106:                                              ; preds = %69
  %107 = load %struct.chnl_txpower_triple*, %struct.chnl_txpower_triple** %14, align 8
  %108 = bitcast %struct.chnl_txpower_triple* %107 to i64*
  %109 = getelementptr inbounds i64, i64* %108, i64 3
  %110 = bitcast i64* %109 to %struct.chnl_txpower_triple*
  store %struct.chnl_txpower_triple* %110, %struct.chnl_txpower_triple** %14, align 8
  br label %111

111:                                              ; preds = %106
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %10, align 8
  br label %36

114:                                              ; preds = %36
  %115 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %116 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @netdev_info(i32 %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i64 1, i64* %10, align 8
  br label %119

119:                                              ; preds = %139, %114
  %120 = load i64, i64* %10, align 8
  %121 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp ule i64 %120, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %119
  %125 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %9, align 8
  %126 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %134 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %10, align 8
  %137 = call i32 (i32, i8*, ...) @netdev_info(i32 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %136)
  br label %138

138:                                              ; preds = %132, %124
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %10, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %10, align 8
  br label %119

142:                                              ; preds = %119
  %143 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %144 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, ...) @netdev_info(i32 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %147 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %148 = load i64*, i64** %6, align 8
  %149 = call i32 @UPDATE_CIE_SRC(%struct.ieee80211_device* %147, i64* %148)
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %9, align 8
  %152 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %9, align 8
  %154 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i64*, i64** %8, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @memcpy(i32 %155, i64* %156, i32 %157)
  %159 = load i32, i32* @DOT11D_STATE_LEARNED, align 4
  %160 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %9, align 8
  %161 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %142, %63, %46
  ret void
}

declare dso_local %struct.rt_dot11d_info* @GET_DOT11D_INFO(%struct.ieee80211_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

declare dso_local i32 @UPDATE_CIE_SRC(%struct.ieee80211_device*, i64*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
