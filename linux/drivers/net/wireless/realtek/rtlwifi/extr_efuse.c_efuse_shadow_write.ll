; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_shadow_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_shadow_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efuse_shadow_write(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i64, i64* %8, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @efuse_shadow_write_1byte(%struct.ieee80211_hw* %12, i32 %13, i32 %15)
  br label %36

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i64, i64* %8, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @efuse_shadow_write_2byte(%struct.ieee80211_hw* %21, i32 %22, i32 %24)
  br label %35

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @efuse_shadow_write_4byte(%struct.ieee80211_hw* %30, i32 %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %26
  br label %35

35:                                               ; preds = %34, %20
  br label %36

36:                                               ; preds = %35, %11
  ret void
}

declare dso_local i32 @efuse_shadow_write_1byte(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @efuse_shadow_write_2byte(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @efuse_shadow_write_4byte(%struct.ieee80211_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
