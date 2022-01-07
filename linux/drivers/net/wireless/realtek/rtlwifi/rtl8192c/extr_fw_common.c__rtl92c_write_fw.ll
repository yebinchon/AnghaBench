; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c__rtl92c_write_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c__rtl92c_write_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }

@COMP_FW = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"FW size is %d bytes,\0A\00", align 1
@HARDWARE_TYPE_RTL8192CE = common dso_local global i64 0, align 8
@FW_8192C_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Page numbers should not greater then 4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @_rtl92c_write_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92c_write_fw(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_hal*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %9, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %20)
  store %struct.rtl_hal* %21, %struct.rtl_hal** %10, align 8
  %22 = load i32*, i32** %7, align 8
  store i32* %22, i32** %12, align 8
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %24 = load i32, i32* @COMP_FW, align 4
  %25 = load i32, i32* @DBG_TRACE, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @RT_TRACE(%struct.rtl_priv* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @IS_NORMAL_CHIP(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %89

32:                                               ; preds = %4
  %33 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %34 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HARDWARE_TYPE_RTL8192CE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @rtl_fill_dummy(i32* %39, i32* %8)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @FW_8192C_PAGE_SIZE, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @FW_8192C_PAGE_SIZE, align 4
  %47 = srem i32 %45, %46
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp sgt i32 %48, 4
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %41
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %69, %52
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @FW_8192C_PAGE_SIZE, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* %16, align 4
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* @FW_8192C_PAGE_SIZE, align 4
  %68 = call i32 @rtl_fw_page_write(%struct.ieee80211_hw* %61, i32 %62, i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %15, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @FW_8192C_PAGE_SIZE, align 4
  %78 = mul nsw i32 %76, %77
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %15, align 4
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @rtl_fw_page_write(%struct.ieee80211_hw* %80, i32 %81, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %75, %72
  br label %94

89:                                               ; preds = %4
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @rtl_fw_block_write(%struct.ieee80211_hw* %90, i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %88
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @IS_NORMAL_CHIP(i32) #1

declare dso_local i32 @rtl_fill_dummy(i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rtl_fw_page_write(%struct.ieee80211_hw*, i32, i32*, i32) #1

declare dso_local i32 @rtl_fw_block_write(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
