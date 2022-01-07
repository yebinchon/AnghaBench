; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_check_auth_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_check_auth_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32 (i32, i64)*, i32 (i32)*, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }

@IEEE80211_ASSOCIATING_AUTHENTICATED = common dso_local global i32 0, align 4
@HT_IOT_ACT_PURE_N_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SEC(%d, %d)\0A\00", align 1
@IEEE_G = common dso_local global i64 0, align 8
@IEEE_N_24G = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"enter half N mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Auth response status code 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_device*, %struct.sk_buff*)* @ieee80211_check_auth_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_check_auth_response(%struct.ieee80211_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @auth_parse(%struct.sk_buff* %11, i32** %8, i32* %9)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %117, label %15

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %111, label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* @IEEE80211_ASSOCIATING_AUTHENTICATED, align 4
  %25 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %32, i32 0, i32 6
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @HT_IOT_ACT_PURE_N_MODE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %23
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %43 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %42, i32 0, i32 5
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %44(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %41
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %52 = call i64 @IsHTHalfNmodeAPs(%struct.ieee80211_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %56

55:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %41
  br label %64

64:                                               ; preds = %63, %23
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %69 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %68, i32 0, i32 4
  %70 = load i32 (i32, i64)*, i32 (i32, i64)** %69, align 8
  %71 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %72 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %75 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 %70(i32 %73, i64 %77)
  br label %88

79:                                               ; preds = %64
  %80 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %81 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %80, i32 0, i32 4
  %82 = load i32 (i32, i64)*, i32 (i32, i64)** %81, align 8
  %83 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %84 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* @IEEE_G, align 8
  %87 = call i32 %82(i32 %85, i64 %86)
  br label %88

88:                                               ; preds = %79, %67
  %89 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %90 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IEEE_N_24G, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %104 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %108

105:                                              ; preds = %95, %88
  %106 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %107 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %98
  %109 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %110 = call i32 @ieee80211_associate_step2(%struct.ieee80211_device* %109)
  br label %116

111:                                              ; preds = %20
  %112 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @ieee80211_auth_challenge(%struct.ieee80211_device* %112, i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %108
  br label %127

117:                                              ; preds = %2
  %118 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %119 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %126 = call i32 @ieee80211_associate_abort(%struct.ieee80211_device* %125)
  br label %127

127:                                              ; preds = %117, %116
  ret void
}

declare dso_local i32 @auth_parse(%struct.sk_buff*, i32**, i32*) #1

declare dso_local i64 @IsHTHalfNmodeAPs(%struct.ieee80211_device*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @ieee80211_associate_step2(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_auth_challenge(%struct.ieee80211_device*, i32*, i32) #1

declare dso_local i32 @IEEE80211_DEBUG_MGMT(i8*, i32) #1

declare dso_local i32 @ieee80211_associate_abort(%struct.ieee80211_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
