; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt_ccmp.c_ccmp_init_iv_and_aad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt_ccmp.c_ccmp_init_iv_and_aad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_80211_hdr_4addr = type { i32*, i32*, i32*, i32, i32 }

@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@CCMP_PN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl_80211_hdr_4addr*, i32*, i32*, i32*)* @ccmp_init_iv_and_aad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccmp_init_iv_and_aad(%struct.rtl_80211_hdr_4addr* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.rtl_80211_hdr_4addr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rtl_80211_hdr_4addr* %0, %struct.rtl_80211_hdr_4addr** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %5, align 8
  %16 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %21 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %25 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %26 = or i32 %24, %25
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @WLAN_FC_GET_TYPE(i32 %29)
  %31 = load i64, i64* @IEEE80211_FTYPE_DATA, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @WLAN_FC_GET_STYPE(i32 %34)
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %33, %4
  %39 = phi i1 [ false, %4 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %14, align 4
  store i64 22, i64* %11, align 8
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 6
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %5, align 8
  %51 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %50, i32 0, i32 0
  %52 = bitcast i32** %51 to i32*
  store i32* %52, i32** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  store i32* %57, i32** %9, align 8
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 15
  store i32 %61, i32* %10, align 4
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %62, 2
  store i64 %63, i64* %11, align 8
  br label %64

64:                                               ; preds = %58, %46
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %5, align 8
  %73 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @ETH_ALEN, align 4
  %76 = call i32 @memcpy(i32* %71, i32* %74, i32 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @CCMP_PN_LEN, align 4
  %81 = call i32 @memcpy(i32* %78, i32* %79, i32 %80)
  %82 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %5, align 8
  %83 = bitcast %struct.rtl_80211_hdr_4addr* %82 to i32*
  store i32* %83, i32** %9, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 143
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 199
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %5, align 8
  %99 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @ETH_ALEN, align 4
  %102 = mul nsw i32 3, %101
  %103 = call i32 @memcpy(i32* %97, i32* %100, i32 %102)
  %104 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %5, align 8
  %105 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %104, i32 0, i32 3
  store i32* %105, i32** %9, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 15
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 20
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 21
  store i32 0, i32* %113, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 22
  %116 = call i32 @memset(i32* %115, i32 0, i32 8)
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %64
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 22
  %122 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %5, align 8
  %123 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* @ETH_ALEN, align 4
  %126 = call i32 @memcpy(i32* %121, i32* %124, i32 %125)
  br label %127

127:                                              ; preds = %119, %64
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i32, i32* %10, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 28, i32 22
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %132, i64 %137
  store i32 %131, i32* %138, align 4
  br label %139

139:                                              ; preds = %130, %127
  %140 = load i64, i64* %11, align 8
  %141 = trunc i64 %140 to i32
  ret i32 %141
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @WLAN_FC_GET_TYPE(i32) #1

declare dso_local i32 @WLAN_FC_GET_STYPE(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
