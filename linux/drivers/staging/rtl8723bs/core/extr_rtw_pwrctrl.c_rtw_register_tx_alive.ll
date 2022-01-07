; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_rtw_register_tx_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_rtw_register_tx_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pwrctrl_priv = type { i64, i64, i32, i32, i64 }

@_SUCCESS = common dso_local global i64 0, align 8
@PS_STATE_S2 = common dso_local global i64 0, align 8
@XMIT_ALIVE = common dso_local global i32 0, align 4
@_module_rtl871x_pwrctrl_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"rtw_register_tx_alive: cpwm = 0x%02x alives = 0x%08x\0A\00", align 1
@_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_register_tx_alive(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pwrctrl_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load i64, i64* @_SUCCESS, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %7)
  store %struct.pwrctrl_priv* %8, %struct.pwrctrl_priv** %4, align 8
  %9 = load i64, i64* @PS_STATE_S2, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %11 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %14 = load i32, i32* @XMIT_ALIVE, align 4
  %15 = call i32 @register_task_alive(%struct.pwrctrl_priv* %13, i32 %14)
  %16 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %17 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %1
  %21 = load i32, i32* @_module_rtl871x_pwrctrl_c_, align 4
  %22 = load i32, i32* @_drv_notice_, align 4
  %23 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %24 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %27 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @RT_TRACE(i32 %21, i32 %22, i8* %30)
  %32 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %33 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %20
  %38 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %39 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PS_STATE_S2, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @_FAIL, align 8
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %43, %37
  %46 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %47 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @rtw_set_rpwm(%struct.adapter* %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55, %20
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %59 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %58, i32 0, i32 2
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i64, i64* @_FAIL, align 8
  %62 = load i64, i64* %3, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %66 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PS_STATE_S2, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i64, i64* @_SUCCESS, align 8
  store i64 %71, i64* %3, align 8
  br label %72

72:                                               ; preds = %70, %64
  br label %73

73:                                               ; preds = %72, %57
  %74 = load i64, i64* %3, align 8
  ret i64 %74
}

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @register_task_alive(%struct.pwrctrl_priv*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_set_rpwm(%struct.adapter*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
