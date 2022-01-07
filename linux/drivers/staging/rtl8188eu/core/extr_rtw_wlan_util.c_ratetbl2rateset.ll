; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_ratetbl2rateset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_ratetbl2rateset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i8* }

@NumRates = common dso_local global i32 0, align 4
@IEEE80211_BASIC_RATE_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i8*)* @ratetbl2rateset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ratetbl2rateset(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlme_ext_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store %struct.mlme_ext_priv* %11, %struct.mlme_ext_priv** %9, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %52, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NumRates, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %18 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %7, align 1
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  switch i32 %25, label %29 [
    i32 255, label %26
    i32 254, label %28
  ]

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %57

28:                                               ; preds = %16
  br label %52

29:                                               ; preds = %16
  %30 = load i8, i8* %7, align 1
  %31 = call zeroext i8 @ratetbl_val_2wifirate(i8 zeroext %30)
  store i8 %31, i8* %7, align 1
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = load i8, i8* %7, align 1
  %34 = call i32 @is_basicrate(%struct.adapter* %32, i8 zeroext %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i8, i8* @IEEE80211_BASIC_RATE_MASK, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %38
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %7, align 1
  br label %43

43:                                               ; preds = %36, %29
  %44 = load i8, i8* %7, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 %44, i8* %48, align 1
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %12

55:                                               ; preds = %12
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %26
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local zeroext i8 @ratetbl_val_2wifirate(i8 zeroext) #1

declare dso_local i32 @is_basicrate(%struct.adapter*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
