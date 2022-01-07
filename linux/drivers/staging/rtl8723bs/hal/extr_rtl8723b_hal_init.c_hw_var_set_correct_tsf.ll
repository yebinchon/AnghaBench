; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_hw_var_set_correct_tsf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_hw_var_set_correct_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32 }

@WIFI_FW_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_FW_AP_STATE = common dso_local global i32 0, align 4
@REG_BCN_CTRL = common dso_local global i32 0, align 4
@EN_BCN_FUNCTION = common dso_local global i32 0, align 4
@REG_TSFTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32*)* @hw_var_set_correct_tsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_var_set_correct_tsf(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlme_ext_priv*, align 8
  %10 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.mlme_ext_priv* %12, %struct.mlme_ext_priv** %9, align 8
  %13 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %14 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %13, i32 0, i32 1
  store %struct.mlme_ext_info* %14, %struct.mlme_ext_info** %10, align 8
  %15 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %16 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %19 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %22 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 1024
  %25 = call i32 @do_div(i32 %20, i32 %24)
  %26 = sub nsw i32 %17, %25
  %27 = sub nsw i32 %26, 1024
  store i32 %27, i32* %8, align 4
  %28 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %29 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 3
  %32 = load i32, i32* @WIFI_FW_ADHOC_STATE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %3
  %35 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %36 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 3
  %39 = load i32, i32* @WIFI_FW_AP_STATE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34, %3
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = call i32 @StopTxBeacon(%struct.adapter* %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = load i32, i32* @REG_BCN_CTRL, align 4
  %47 = call i32 @rtw_read8(%struct.adapter* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @EN_BCN_FUNCTION, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = load i32, i32* @REG_BCN_CTRL, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @rtw_write8(%struct.adapter* %52, i32 %53, i32 %54)
  %56 = load %struct.adapter*, %struct.adapter** %4, align 8
  %57 = load i64, i64* @REG_TSFTR, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @rtw_write32(%struct.adapter* %56, i64 %57, i32 %58)
  %60 = load %struct.adapter*, %struct.adapter** %4, align 8
  %61 = load i64, i64* @REG_TSFTR, align 8
  %62 = add nsw i64 %61, 4
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 32
  %65 = call i32 @rtw_write32(%struct.adapter* %60, i64 %62, i32 %64)
  %66 = load %struct.adapter*, %struct.adapter** %4, align 8
  %67 = load i32, i32* @REG_BCN_CTRL, align 4
  %68 = call i32 @rtw_read8(%struct.adapter* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @EN_BCN_FUNCTION, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.adapter*, %struct.adapter** %4, align 8
  %73 = load i32, i32* @REG_BCN_CTRL, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @rtw_write8(%struct.adapter* %72, i32 %73, i32 %74)
  %76 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %77 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 3
  %80 = load i32, i32* @WIFI_FW_ADHOC_STATE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %44
  %83 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %84 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 3
  %87 = load i32, i32* @WIFI_FW_AP_STATE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82, %44
  %90 = load %struct.adapter*, %struct.adapter** %4, align 8
  %91 = call i32 @ResumeTxBeacon(%struct.adapter* %90)
  br label %92

92:                                               ; preds = %89, %82
  ret void
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @StopTxBeacon(%struct.adapter*) #1

declare dso_local i32 @rtw_read8(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.adapter*, i64, i32) #1

declare dso_local i32 @ResumeTxBeacon(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
