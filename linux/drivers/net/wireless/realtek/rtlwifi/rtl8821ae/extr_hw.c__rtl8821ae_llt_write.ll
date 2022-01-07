; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_llt_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_llt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@_LLT_WRITE_ACCESS = common dso_local global i32 0, align 4
@REG_LLT_INIT = common dso_local global i32 0, align 4
@_LLT_NO_ACTIVE = common dso_local global i64 0, align 8
@POLLING_LLT_THRESHOLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Failed to polling write LLT done at address %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @_rtl8821ae_llt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_llt_write(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %7, align 8
  store i32 1, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @_LLT_INIT_ADDR(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @_LLT_INIT_DATA(i32 %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* @_LLT_WRITE_ACCESS, align 4
  %19 = call i32 @_LLT_OP(i32 %18)
  %20 = or i32 %17, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %22 = load i32, i32* @REG_LLT_INIT, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @rtl_write_dword(%struct.rtl_priv* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %42, %3
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %27 = load i32, i32* @REG_LLT_INIT, align 4
  %28 = call i32 @rtl_read_dword(%struct.rtl_priv* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* @_LLT_NO_ACTIVE, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @_LLT_OP_VALUE(i32 %30)
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %46

34:                                               ; preds = %25
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @POLLING_LLT_THRESHOLD, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 0, i32* %8, align 4
  br label %46

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %25, label %46

46:                                               ; preds = %42, %38, %33
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_LLT_INIT_ADDR(i32) #1

declare dso_local i32 @_LLT_INIT_DATA(i32) #1

declare dso_local i32 @_LLT_OP(i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i64 @_LLT_OP_VALUE(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
