; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_lps_change_dtim_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_lps_change_dtim_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pwrctrl_priv = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [64 x i8] c"change DTIM from %d to %d, bFwCurrentInPSMode =%d, ps_mode =%d\0A\00", align 1
@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@HW_VAR_H2C_FW_PWRMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @rtw_lps_change_dtim_hdl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_lps_change_dtim_hdl(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwrctrl_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %7)
  store %struct.pwrctrl_priv* %8, %struct.pwrctrl_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 16
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  br label %67

15:                                               ; preds = %11
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = call i32 @hal_btcoex_IsBtControlLps(%struct.adapter* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %67

20:                                               ; preds = %15
  %21 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %22 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %21, i32 0, i32 3
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %25 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %20
  %30 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %31 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %35 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %38 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @DBG_871X(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %36, i64 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %43 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %29, %20
  %45 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %46 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %51 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %57 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = load i32, i32* @HW_VAR_H2C_FW_PWRMODE, align 4
  %62 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %60, i32 %61, i32* %6)
  br label %63

63:                                               ; preds = %55, %49, %44
  %64 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %65 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %64, i32 0, i32 3
  %66 = call i32 @mutex_unlock(i32* %65)
  br label %67

67:                                               ; preds = %63, %19, %14
  ret void
}

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @hal_btcoex_IsBtControlLps(%struct.adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DBG_871X(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
