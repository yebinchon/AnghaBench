; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_get_current_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_get_current_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@EFUSE_MAX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_hw*)* @efuse_get_current_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @efuse_get_current_size(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  store i32 1, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %41, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @efuse_one_byte_read(%struct.ieee80211_hw* %13, i64 %14, i32* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @EFUSE_MAX_SIZE, align 8
  %20 = icmp slt i64 %18, %19
  br label %21

21:                                               ; preds = %17, %12, %9
  %22 = phi i1 [ false, %12 ], [ false, %9 ], [ %20, %17 ]
  br i1 %22, label %23, label %42

23:                                               ; preds = %21
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 255
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 4
  %29 = and i32 %28, 15
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 15
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @efuse_calculate_word_cnts(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %41

40:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %26
  br label %9

42:                                               ; preds = %21
  %43 = load i64, i64* %4, align 8
  ret i64 %43
}

declare dso_local i64 @efuse_one_byte_read(%struct.ieee80211_hw*, i64, i32*) #1

declare dso_local i32 @efuse_calculate_word_cnts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
