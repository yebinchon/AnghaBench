; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_find_221_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_find_221_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.octet_string = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32*, i32)* @rtl_find_221_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_find_221_ie(%struct.ieee80211_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  %9 = alloca %struct.octet_string, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %14, %struct.ieee80211_mgmt** %8, align 8
  %15 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %11, align 8
  br label %25

25:                                               ; preds = %63, %3
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ult i32* %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 221
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.octet_string, %struct.octet_string* %9, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = getelementptr inbounds %struct.octet_string, %struct.octet_string* %9, i32 0, i32 1
  store i32* %40, i32** %41, align 8
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %43 = bitcast %struct.octet_string* %9 to { i32, i32* }*
  %44 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %43, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @rtl_chk_vendor_ouisub(%struct.ieee80211_hw* %42, i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %72

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32*, i32** %11, align 8
  %61 = icmp ugt i32* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %72

63:                                               ; preds = %52
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 2, %66
  %68 = load i32*, i32** %10, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %10, align 8
  br label %25

71:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %62, %50
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @rtl_chk_vendor_ouisub(%struct.ieee80211_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
