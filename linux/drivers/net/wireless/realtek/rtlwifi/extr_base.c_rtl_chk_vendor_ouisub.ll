; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_chk_vendor_ouisub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_chk_vendor_ouisub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.octet_string = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rtl_chk_vendor_ouisub.athcap_1 = internal global [3 x i32] [i32 0, i32 3, i32 127], align 4
@rtl_chk_vendor_ouisub.athcap_2 = internal global [3 x i32] [i32 0, i32 19, i32 116], align 4
@rtl_chk_vendor_ouisub.broadcap_1 = internal global [3 x i32] [i32 0, i32 16, i32 24], align 4
@rtl_chk_vendor_ouisub.broadcap_2 = internal global [3 x i32] [i32 0, i32 10, i32 247], align 4
@rtl_chk_vendor_ouisub.broadcap_3 = internal global [3 x i32] [i32 0, i32 5, i32 181], align 4
@rtl_chk_vendor_ouisub.racap = internal global [3 x i32] [i32 0, i32 12, i32 67], align 4
@rtl_chk_vendor_ouisub.ciscocap = internal global [3 x i32] [i32 0, i32 64, i32 150], align 4
@rtl_chk_vendor_ouisub.marvcap = internal global [3 x i32] [i32 0, i32 80, i32 67], align 4
@PEER_ATH = common dso_local global i32 0, align 4
@PEER_BROAD = common dso_local global i32 0, align 4
@PEER_RAL = common dso_local global i32 0, align 4
@PEER_CISCO = common dso_local global i32 0, align 4
@PEER_MARV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @rtl_chk_vendor_ouisub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_chk_vendor_ouisub(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.octet_string, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.octet_string, %struct.octet_string* %3, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = getelementptr inbounds %struct.octet_string, %struct.octet_string* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @memcmp(i32 %11, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_chk_vendor_ouisub.athcap_1, i64 0, i64 0), i32 3)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.octet_string, %struct.octet_string* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @memcmp(i32 %16, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_chk_vendor_ouisub.athcap_2, i64 0, i64 0), i32 3)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @PEER_ATH, align 4
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  store i32 1, i32* %6, align 4
  br label %78

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.octet_string, %struct.octet_string* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @memcmp(i32 %26, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_chk_vendor_ouisub.broadcap_1, i64 0, i64 0), i32 3)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.octet_string, %struct.octet_string* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @memcmp(i32 %31, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_chk_vendor_ouisub.broadcap_2, i64 0, i64 0), i32 3)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.octet_string, %struct.octet_string* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @memcmp(i32 %36, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_chk_vendor_ouisub.broadcap_3, i64 0, i64 0), i32 3)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34, %29, %24
  %40 = load i32, i32* @PEER_BROAD, align 4
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %42 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  store i32 1, i32* %6, align 4
  br label %77

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.octet_string, %struct.octet_string* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @memcmp(i32 %46, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_chk_vendor_ouisub.racap, i64 0, i64 0), i32 3)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @PEER_RAL, align 4
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %52 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  store i32 1, i32* %6, align 4
  br label %76

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.octet_string, %struct.octet_string* %3, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @memcmp(i32 %56, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_chk_vendor_ouisub.ciscocap, i64 0, i64 0), i32 3)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @PEER_CISCO, align 4
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  store i32 1, i32* %6, align 4
  br label %75

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.octet_string, %struct.octet_string* %3, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @memcmp(i32 %66, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_chk_vendor_ouisub.marvcap, i64 0, i64 0), i32 3)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* @PEER_MARV, align 4
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %75, %49
  br label %77

77:                                               ; preds = %76, %39
  br label %78

78:                                               ; preds = %77, %19
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
