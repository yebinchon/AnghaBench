; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_rtw_get_ch_setting_union.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_rtw_get_ch_setting_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.dvobj_priv = type { %struct.adapter* }

@CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i64 0, align 8
@_FW_LINKED = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_get_ch_setting_union(%struct.adapter* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.dvobj_priv*, align 8
  %11 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.adapter*, %struct.adapter** %6, align 8
  %13 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %12)
  store %struct.dvobj_priv* %13, %struct.dvobj_priv** %10, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64*, i64** %7, align 8
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %16, %4
  %19 = load i64*, i64** %8, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* @CHANNEL_WIDTH_20, align 8
  %23 = load i64*, i64** %8, align 8
  store i64 %22, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64*, i64** %9, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 8
  %29 = load i64*, i64** %9, align 8
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.dvobj_priv*, %struct.dvobj_priv** %10, align 8
  %32 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %31, i32 0, i32 0
  %33 = load %struct.adapter*, %struct.adapter** %32, align 8
  store %struct.adapter* %33, %struct.adapter** %11, align 8
  %34 = load %struct.adapter*, %struct.adapter** %11, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = load i32, i32* @_FW_LINKED, align 4
  %37 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @check_fwstate(i32* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %43

42:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local i32 @check_fwstate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
