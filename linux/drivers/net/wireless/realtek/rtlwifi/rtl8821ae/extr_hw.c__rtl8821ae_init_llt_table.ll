; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_init_llt_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_init_llt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@LAST_ENTRY_OF_TX_PKT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl8821ae_init_llt_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_init_llt_table(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @LAST_ENTRY_OF_TX_PKT_BUFFER, align 4
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %28, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @_rtl8821ae_llt_write(%struct.ieee80211_hw* %18, i32 %19, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %12

31:                                               ; preds = %12
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @_rtl8821ae_llt_write(%struct.ieee80211_hw* %32, i32 %34, i32 255)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %57, %40
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @_rtl8821ae_llt_write(%struct.ieee80211_hw* %47, i32 %48, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %71

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @_rtl8821ae_llt_write(%struct.ieee80211_hw* %61, i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %67, %54, %38, %25
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @_rtl8821ae_llt_write(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
