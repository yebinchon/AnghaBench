; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_process_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_process_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rtl_80211_hdr = type { i32 }

@IEEE80211_DL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"error to get payload of action frame\0A\00", align 1
@ACT_ADDBAREQ = common dso_local global i32 0, align 4
@ACT_ADDBARSP = common dso_local global i32 0, align 4
@ACT_DELBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_device*, %struct.sk_buff*)* @ieee80211_process_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_process_action(%struct.ieee80211_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtl_80211_hdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.rtl_80211_hdr*
  store %struct.rtl_80211_hdr* %11, %struct.rtl_80211_hdr** %5, align 8
  %12 = load %struct.rtl_80211_hdr*, %struct.rtl_80211_hdr** %5, align 8
  %13 = call i32* @ieee80211_get_payload(%struct.rtl_80211_hdr* %12)
  store i32* %13, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @IEEE80211_DL_ERR, align 4
  %18 = call i32 @IEEE80211_DEBUG(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %57

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %55 [
    i32 128, label %25
  ]

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ACT_ADDBAREQ, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @ieee80211_rx_ADDBAReq(%struct.ieee80211_device* %31, %struct.sk_buff* %32)
  br label %54

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ACT_ADDBARSP, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @ieee80211_rx_ADDBARsp(%struct.ieee80211_device* %40, %struct.sk_buff* %41)
  br label %53

43:                                               ; preds = %34
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ACT_DELBA, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @ieee80211_rx_DELBA(%struct.ieee80211_device* %49, %struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53, %30
  br label %56

55:                                               ; preds = %19
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %16
  ret void
}

declare dso_local i32* @ieee80211_get_payload(%struct.rtl_80211_hdr*) #1

declare dso_local i32 @IEEE80211_DEBUG(i32, i8*) #1

declare dso_local i32 @ieee80211_rx_ADDBAReq(%struct.ieee80211_device*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_ADDBARsp(%struct.ieee80211_device*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_DELBA(%struct.ieee80211_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
