; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_update_IOT_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_update_IOT_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32, i32 }

@DYNAMIC_BB_DYNAMIC_TXPWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_IOT_info(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_ext_priv*, align 8
  %4 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  store %struct.mlme_ext_priv* %6, %struct.mlme_ext_priv** %3, align 8
  %7 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %7, i32 0, i32 0
  store %struct.mlme_ext_info* %8, %struct.mlme_ext_info** %4, align 8
  %9 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %10 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %31 [
    i32 130, label %12
    i32 129, label %17
    i32 128, label %26
  ]

12:                                               ; preds = %1
  %13 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %14 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %16 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %15, i32 0, i32 2
  store i32 0, i32* %16, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %19 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %21 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %20, i32 0, i32 2
  store i32 1, i32* %21, align 4
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = load i32, i32* @DYNAMIC_BB_DYNAMIC_TXPWR, align 4
  %24 = xor i32 %23, -1
  %25 = call i32 @Switch_DM_Func(%struct.adapter* %22, i32 %24, i32 0)
  br label %36

26:                                               ; preds = %1
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = load i32, i32* @DYNAMIC_BB_DYNAMIC_TXPWR, align 4
  %29 = xor i32 %28, -1
  %30 = call i32 @Switch_DM_Func(%struct.adapter* %27, i32 %29, i32 0)
  br label %36

31:                                               ; preds = %1
  %32 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %33 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %35 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %34, i32 0, i32 2
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %26, %17, %12
  ret void
}

declare dso_local i32 @Switch_DM_Func(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
