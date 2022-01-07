; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c__rtl8821ae_write_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c__rtl8821ae_write_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@COMP_FW = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"FW size is %d bytes,\0A\00", align 1
@FW_8821AE_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Page numbers should not greater then 8\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @_rtl8821ae_write_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_write_fw(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %9, align 8
  %17 = load i32*, i32** %7, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %19 = load i32, i32* @COMP_FW, align 4
  %20 = load i32, i32* @DBG_LOUD, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @RT_TRACE(%struct.rtl_priv* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @rtl_fill_dummy(i32* %23, i32* %8)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @FW_8821AE_PAGE_SIZE, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @FW_8821AE_PAGE_SIZE, align 4
  %30 = srem i32 %28, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 8
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %4
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @FW_8821AE_PAGE_SIZE, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %14, align 4
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* @FW_8821AE_PAGE_SIZE, align 4
  %51 = call i32 @rtl_fw_page_write(%struct.ieee80211_hw* %44, i32 %45, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @FW_8821AE_PAGE_SIZE, align 4
  %61 = mul nsw i32 %59, %60
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %13, align 4
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @rtl_fw_page_write(%struct.ieee80211_hw* %63, i32 %64, i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %58, %55
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl_fill_dummy(i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rtl_fw_page_write(%struct.ieee80211_hw*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
