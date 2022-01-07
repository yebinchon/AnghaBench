; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211.h_ieee80211_get_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211.h_ieee80211_get_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_80211_hdr = type { i32 }
%struct.rtl_80211_hdr_1addr = type { i32* }
%struct.rtl_80211_hdr_2addr = type { i32* }
%struct.rtl_80211_hdr_3addr = type { i32* }
%struct.rtl_80211_hdr_4addr = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.rtl_80211_hdr*)* @ieee80211_get_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ieee80211_get_payload(%struct.rtl_80211_hdr* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.rtl_80211_hdr*, align 8
  store %struct.rtl_80211_hdr* %0, %struct.rtl_80211_hdr** %3, align 8
  %4 = load %struct.rtl_80211_hdr*, %struct.rtl_80211_hdr** %3, align 8
  %5 = getelementptr inbounds %struct.rtl_80211_hdr, %struct.rtl_80211_hdr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @le16_to_cpu(i32 %6)
  %8 = call i32 @ieee80211_get_hdrlen(i32 %7)
  switch i32 %8, label %29 [
    i32 131, label %9
    i32 130, label %14
    i32 129, label %19
    i32 128, label %24
  ]

9:                                                ; preds = %1
  %10 = load %struct.rtl_80211_hdr*, %struct.rtl_80211_hdr** %3, align 8
  %11 = bitcast %struct.rtl_80211_hdr* %10 to %struct.rtl_80211_hdr_1addr*
  %12 = getelementptr inbounds %struct.rtl_80211_hdr_1addr, %struct.rtl_80211_hdr_1addr* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %2, align 8
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.rtl_80211_hdr*, %struct.rtl_80211_hdr** %3, align 8
  %16 = bitcast %struct.rtl_80211_hdr* %15 to %struct.rtl_80211_hdr_2addr*
  %17 = getelementptr inbounds %struct.rtl_80211_hdr_2addr, %struct.rtl_80211_hdr_2addr* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %2, align 8
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.rtl_80211_hdr*, %struct.rtl_80211_hdr** %3, align 8
  %21 = bitcast %struct.rtl_80211_hdr* %20 to %struct.rtl_80211_hdr_3addr*
  %22 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %2, align 8
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.rtl_80211_hdr*, %struct.rtl_80211_hdr** %3, align 8
  %26 = bitcast %struct.rtl_80211_hdr* %25 to %struct.rtl_80211_hdr_4addr*
  %27 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %2, align 8
  br label %30

29:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %30

30:                                               ; preds = %29, %24, %19, %14, %9
  %31 = load i32*, i32** %2, align 8
  ret i32* %31
}

declare dso_local i32 @ieee80211_get_hdrlen(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
