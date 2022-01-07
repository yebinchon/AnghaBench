; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_cam.c_rtl_cam_delete_one_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_cam.c_rtl_cam_delete_one_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@COMP_SEC = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"key_idx:%d\0A\00", align 1
@CAM_CONTENT_COUNT = common dso_local global i32 0, align 4
@WCAMI = common dso_local global i64 0, align 8
@RWCAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"rtl_cam_delete_one_entry(): WRITE A4: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"rtl_cam_delete_one_entry(): WRITE A0: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_cam_delete_one_entry(%struct.ieee80211_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %8, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %12 = load i32, i32* @COMP_SEC, align 4
  %13 = load i32, i32* @DBG_DMESG, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @RT_TRACE(%struct.rtl_priv* %11, i32 %12, i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @CAM_CONTENT_COUNT, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @BIT(i32 31)
  %21 = or i32 %19, %20
  %22 = call i32 @BIT(i32 16)
  %23 = or i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @WCAMI, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rtl_write_dword(%struct.rtl_priv* %24, i32 %32, i32 0)
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @RWCAM, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @rtl_write_dword(%struct.rtl_priv* %34, i32 %42, i32 %43)
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %46 = load i32, i32* @COMP_SEC, align 4
  %47 = load i32, i32* @DBG_DMESG, align 4
  %48 = call i32 @RT_TRACE(%struct.rtl_priv* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %50 = load i32, i32* @COMP_SEC, align 4
  %51 = load i32, i32* @DBG_DMESG, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  ret i32 0
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
