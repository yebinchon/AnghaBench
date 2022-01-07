; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_networktype_to_raid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_networktype_to_raid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RATR_INX_WIRELESS_B = common dso_local global i8 0, align 1
@RATR_INX_WIRELESS_G = common dso_local global i8 0, align 1
@RATR_INX_WIRELESS_GB = common dso_local global i8 0, align 1
@RATR_INX_WIRELESS_N = common dso_local global i8 0, align 1
@RATR_INX_WIRELESS_NG = common dso_local global i8 0, align 1
@RATR_INX_WIRELESS_NGB = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @networktype_to_raid(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %18 [
    i32 134, label %6
    i32 136, label %8
    i32 131, label %8
    i32 133, label %10
    i32 129, label %12
    i32 128, label %12
    i32 135, label %14
    i32 130, label %14
    i32 132, label %16
  ]

6:                                                ; preds = %1
  %7 = load i8, i8* @RATR_INX_WIRELESS_B, align 1
  store i8 %7, i8* %2, align 1
  br label %20

8:                                                ; preds = %1, %1
  %9 = load i8, i8* @RATR_INX_WIRELESS_G, align 1
  store i8 %9, i8* %2, align 1
  br label %20

10:                                               ; preds = %1
  %11 = load i8, i8* @RATR_INX_WIRELESS_GB, align 1
  store i8 %11, i8* %2, align 1
  br label %20

12:                                               ; preds = %1, %1
  %13 = load i8, i8* @RATR_INX_WIRELESS_N, align 1
  store i8 %13, i8* %2, align 1
  br label %20

14:                                               ; preds = %1, %1
  %15 = load i8, i8* @RATR_INX_WIRELESS_NG, align 1
  store i8 %15, i8* %2, align 1
  br label %20

16:                                               ; preds = %1
  %17 = load i8, i8* @RATR_INX_WIRELESS_NGB, align 1
  store i8 %17, i8* %2, align 1
  br label %20

18:                                               ; preds = %1
  %19 = load i8, i8* @RATR_INX_WIRELESS_GB, align 1
  store i8 %19, i8* %2, align 1
  br label %20

20:                                               ; preds = %18, %16, %14, %12, %10, %8, %6
  %21 = load i8, i8* %2, align 1
  ret i8 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
