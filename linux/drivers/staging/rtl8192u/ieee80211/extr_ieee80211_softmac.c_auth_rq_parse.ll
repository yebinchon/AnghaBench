; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_auth_rq_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_auth_rq_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_authentication = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"invalid len in auth request: %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_AUTH_OPEN = common dso_local global i64 0, align 8
@WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32*)* @auth_rq_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_rq_parse(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_authentication*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 4
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ieee80211_authentication*
  store %struct.ieee80211_authentication* %21, %struct.ieee80211_authentication** %6, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.ieee80211_authentication*, %struct.ieee80211_authentication** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_authentication, %struct.ieee80211_authentication* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @memcpy(i32* %22, i32 %26, i32 %27)
  %29 = load %struct.ieee80211_authentication*, %struct.ieee80211_authentication** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_authentication, %struct.ieee80211_authentication* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le16_to_cpu(i32 %31)
  %33 = load i64, i64* @WLAN_AUTH_OPEN, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = load i32, i32* @WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %17
  %38 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @IEEE80211_DEBUG_MGMT(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
