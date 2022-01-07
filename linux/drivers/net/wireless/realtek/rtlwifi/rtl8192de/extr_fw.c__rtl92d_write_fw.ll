; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_fw.c__rtl92d_write_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_fw.c__rtl92d_write_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }

@COMP_FW = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"FW size is %d bytes,\0A\00", align 1
@HARDWARE_TYPE_RTL8192DE = common dso_local global i64 0, align 8
@FW_8192D_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Page numbers should not greater then 8\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @_rtl92d_write_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_write_fw(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_hal*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %9, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %19)
  store %struct.rtl_hal* %20, %struct.rtl_hal** %10, align 8
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %11, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %23 = load i32, i32* @COMP_FW, align 4
  %24 = load i32, i32* @DBG_TRACE, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @RT_TRACE(%struct.rtl_priv* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %28 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HARDWARE_TYPE_RTL8192DE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @rtl_fill_dummy(i32* %33, i32* %8)
  br label %35

35:                                               ; preds = %32, %4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @FW_8192D_PAGE_SIZE, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @FW_8192D_PAGE_SIZE, align 4
  %41 = srem i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %42, 8
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %35
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @FW_8192D_PAGE_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %15, align 4
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* @FW_8192D_PAGE_SIZE, align 4
  %62 = call i32 @rtl_fw_page_write(%struct.ieee80211_hw* %55, i32 %56, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @FW_8192D_PAGE_SIZE, align 4
  %72 = mul nsw i32 %70, %71
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %14, align 4
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @rtl_fw_page_write(%struct.ieee80211_hw* %74, i32 %75, i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %69, %66
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

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
