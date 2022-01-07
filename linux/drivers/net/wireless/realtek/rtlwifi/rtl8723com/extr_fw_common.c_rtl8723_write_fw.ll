; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_fw_common.c_rtl8723_write_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_fw_common.c_rtl8723_write_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@COMP_FW = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"FW size is %d bytes,\0A\00", align 1
@FW_8192C_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Page numbers should not greater than %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"FW write done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723_write_fw(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %11, align 8
  %19 = load i32*, i32** %8, align 8
  store i32* %19, i32** %12, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %21 = load i32, i32* @COMP_FW, align 4
  %22 = load i32, i32* @DBG_TRACE, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @rtl_fill_dummy(i32* %25, i32* %9)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @FW_8192C_PAGE_SIZE, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FW_8192C_PAGE_SIZE, align 4
  %32 = srem i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %5
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @FW_8192C_PAGE_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %16, align 4
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* @FW_8192C_PAGE_SIZE, align 4
  %55 = call i32 @rtl_fw_page_write(%struct.ieee80211_hw* %48, i32 %49, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @FW_8192C_PAGE_SIZE, align 4
  %65 = mul nsw i32 %63, %64
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %15, align 4
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @rtl_fw_page_write(%struct.ieee80211_hw* %67, i32 %68, i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %62, %59
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %77 = load i32, i32* @COMP_FW, align 4
  %78 = load i32, i32* @DBG_TRACE, align 4
  %79 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_fill_dummy(i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rtl_fw_page_write(%struct.ieee80211_hw*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
