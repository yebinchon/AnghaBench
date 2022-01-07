; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_probe_rq_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_probe_rq_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i64* }
%struct.rtl_80211_hdr_3addr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.ieee80211_device*, %struct.sk_buff*, i64*)* @probe_rq_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @probe_rq_parse(%struct.ieee80211_device* %0, %struct.sk_buff* %1, i64* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtl_80211_hdr_3addr*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* null, i64** %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = bitcast i64* %15 to %struct.rtl_80211_hdr_3addr*
  store %struct.rtl_80211_hdr_3addr* %16, %struct.rtl_80211_hdr_3addr** %12, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i16 -1, i16* %4, align 2
  br label %86

23:                                               ; preds = %3
  %24 = load i64*, i64** %7, align 8
  %25 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %12, align 8
  %26 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i32 @memcpy(i64* %24, i32 %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %32, i64 %36
  store i64* %37, i64** %9, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 4
  store i64* %41, i64** %8, align 8
  br label %42

42:                                               ; preds = %57, %23
  %43 = load i64*, i64** %8, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64*, i64** %9, align 8
  %46 = icmp ult i64* %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64*, i64** %8, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  store i64* %53, i64** %10, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  br label %66

57:                                               ; preds = %47
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %8, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64* %63, i64** %8, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %8, align 8
  br label %42

66:                                               ; preds = %51, %42
  %67 = load i64, i64* %11, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i16 1, i16* %4, align 2
  br label %86

70:                                               ; preds = %66
  %71 = load i64*, i64** %10, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i16 1, i16* %4, align 2
  br label %86

74:                                               ; preds = %70
  %75 = load i64*, i64** %10, align 8
  %76 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @strncmp(i64* %75, i32 %79, i64 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %4, align 2
  br label %86

86:                                               ; preds = %74, %73, %69, %22
  %87 = load i16, i16* %4, align 2
  ret i16 %87
}

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @strncmp(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
