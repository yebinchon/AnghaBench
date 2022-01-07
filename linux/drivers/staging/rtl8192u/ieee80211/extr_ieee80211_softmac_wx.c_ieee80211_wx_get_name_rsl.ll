; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_get_name_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_get_name_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i64 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"802.11\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@IEEE80211_CCK_MODULATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@IEEE80211_OFDM_MODULATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"/g\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@IEEE_N_24G = common dso_local global i32 0, align 4
@IEEE_N_5G = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"/n\00", align 1
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@IEEE80211_LINKED_SCANNING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c" linked\00", align 1
@IEEE80211_NOLINK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c" link..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_get_name(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %10 = bitcast %union.iwreq_data* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = call i32 @strlcpy(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IEEE80211_CCK_MODULATION, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %4
  %21 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %22 = bitcast %union.iwreq_data* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFNAMSIZ, align 4
  %25 = call i32 @strlcat(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IEEE80211_OFDM_MODULATION, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %34 = bitcast %union.iwreq_data* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFNAMSIZ, align 4
  %37 = call i32 @strlcat(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %20
  br label %53

39:                                               ; preds = %4
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IEEE80211_OFDM_MODULATION, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %48 = bitcast %union.iwreq_data* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFNAMSIZ, align 4
  %51 = call i32 @strlcat(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %39
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE_N_24G, align 4
  %58 = load i32, i32* @IEEE_N_5G, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %64 = bitcast %union.iwreq_data* %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IFNAMSIZ, align 4
  %67 = call i32 @strlcat(i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62, %53
  %69 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IEEE80211_LINKED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IEEE80211_LINKED_SCANNING, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74, %68
  %81 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %82 = bitcast %union.iwreq_data* %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IFNAMSIZ, align 4
  %85 = call i32 @strlcat(i32 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  br label %99

86:                                               ; preds = %74
  %87 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %88 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IEEE80211_NOLINK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %94 = bitcast %union.iwreq_data* %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IFNAMSIZ, align 4
  %97 = call i32 @strlcat(i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %86
  br label %99

99:                                               ; preds = %98, %80
  ret i32 0
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
