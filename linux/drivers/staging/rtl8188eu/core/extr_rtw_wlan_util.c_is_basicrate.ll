; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_is_basicrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_is_basicrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i8* }

@NumRates = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i8)* @is_basicrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_basicrate(%struct.adapter* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.mlme_ext_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.mlme_ext_priv* %10, %struct.mlme_ext_priv** %8, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NumRates, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %17 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %7, align 1
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %24, 255
  br i1 %25, label %26, label %39

26:                                               ; preds = %15
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 254
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %7, align 1
  %34 = call zeroext i8 @ratetbl_val_2wifirate(i8 zeroext %33)
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %44

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %26, %15
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %11

43:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local zeroext i8 @ratetbl_val_2wifirate(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
