; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_support_short_GI.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_support_short_GI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }
%struct.HT_caps_element = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@_FAIL = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @support_short_GI(%struct.adapter* %0, %struct.HT_caps_element* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.HT_caps_element*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.mlme_ext_priv*, align 8
  %10 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.HT_caps_element* %1, %struct.HT_caps_element** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.mlme_ext_priv* %12, %struct.mlme_ext_priv** %9, align 8
  %13 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %14 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %13, i32 0, i32 0
  store %struct.mlme_ext_info* %14, %struct.mlme_ext_info** %10, align 8
  %15 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %16 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @_FAIL, align 4
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CHANNEL_WIDTH_40, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 6, i32 5
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %8, align 1
  %29 = load %struct.HT_caps_element*, %struct.HT_caps_element** %6, align 8
  %30 = getelementptr inbounds %struct.HT_caps_element, %struct.HT_caps_element* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 1, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %21
  %41 = load i32, i32* @_SUCCESS, align 4
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %21
  %43 = load i32, i32* @_FAIL, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %40, %19
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
