; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_recv_linux.c_rtw_handle_tkip_mic_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_recv_linux.c_rtw_handle_tkip_mic_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.security_priv, %struct.mlme_priv }
%struct.security_priv = type { i64, i32, i64 }
%struct.mlme_priv = type { i32* }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iw_michaelmicfailure = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@NL80211_KEYTYPE_GROUP = common dso_local global i32 0, align 4
@NL80211_KEYTYPE_PAIRWISE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IW_MICFAILURE_GROUP = common dso_local global i32 0, align 4
@IW_MICFAILURE_PAIRWISE = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_handle_tkip_mic_err(%struct.adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.iwreq_data, align 4
  %7 = alloca %struct.iw_michaelmicfailure, align 4
  %8 = alloca %struct.mlme_priv*, align 8
  %9 = alloca %struct.security_priv*, align 8
  %10 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 2
  store %struct.mlme_priv* %12, %struct.mlme_priv** %8, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  store %struct.security_priv* %14, %struct.security_priv** %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %16 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i8*, i8** @jiffies, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %23 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %50

24:                                               ; preds = %2
  %25 = load i8*, i8** @jiffies, align 8
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %29 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  %32 = load i32, i32* @HZ, align 4
  %33 = mul nsw i32 60, %32
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %24
  %37 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %38 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  %39 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %40 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %43 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  br label %49

44:                                               ; preds = %24
  %45 = load i8*, i8** @jiffies, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %48 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %36
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @NL80211_KEYTYPE_GROUP, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %66 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = bitcast i32* %68 to i64*
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @GFP_ATOMIC, align 4
  %72 = call i32 @cfg80211_michael_mic_failure(i32 %64, i64* %69, i32 %70, i32 -1, i32* null, i32 %71)
  %73 = bitcast %struct.iw_michaelmicfailure* %7 to %union.iwreq_data*
  %74 = call i32 @memset(%union.iwreq_data* %73, i32 0, i32 16)
  %75 = load i64, i64* %4, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %61
  %78 = load i32, i32* @IW_MICFAILURE_GROUP, align 4
  %79 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %7, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %87

82:                                               ; preds = %61
  %83 = load i32, i32* @IW_MICFAILURE_PAIRWISE, align 4
  %84 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %7, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32, i32* @ARPHRD_ETHER, align 4
  %89 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %7, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %7, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %95 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* @ETH_ALEN, align 4
  %99 = call i32 @memcpy(i32 %93, i32* %97, i32 %98)
  %100 = call i32 @memset(%union.iwreq_data* %6, i32 0, i32 8)
  %101 = bitcast %union.iwreq_data* %6 to %struct.TYPE_4__*
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 16, i32* %102, align 4
  ret void
}

declare dso_local i32 @cfg80211_michael_mic_failure(i32, i64*, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
