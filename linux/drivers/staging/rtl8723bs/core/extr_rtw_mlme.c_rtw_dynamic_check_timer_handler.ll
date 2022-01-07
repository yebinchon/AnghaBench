; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_dynamic_check_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_dynamic_check_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"IsBtDisabled =%d, IsBtControlLps =%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_dynamic_check_timer_handler(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = icmp ne %struct.adapter* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %73

7:                                                ; preds = %1
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %73

13:                                               ; preds = %7
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13
  br label %73

24:                                               ; preds = %18
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %73

30:                                               ; preds = %24
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = call i64 @is_primary_adapter(%struct.adapter* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = call i32 @hal_btcoex_IsBtDisabled(%struct.adapter* %35)
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = call i32 @hal_btcoex_IsBtControlLps(%struct.adapter* %37)
  %39 = call i32 @DBG_871X(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %34, %30
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = call %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = call i32 @hal_btcoex_IsBtControlLps(%struct.adapter* %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load %struct.adapter*, %struct.adapter** %2, align 8
  %52 = call i32 @linked_status_chk(%struct.adapter* %51)
  %53 = load %struct.adapter*, %struct.adapter** %2, align 8
  %54 = call i64 @traffic_status_watchdog(%struct.adapter* %53, i32 1)
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %3, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.adapter*, %struct.adapter** %2, align 8
  %59 = call i32 @rtw_hal_dm_watchdog_in_lps(%struct.adapter* %58)
  br label %61

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %57
  br label %70

62:                                               ; preds = %46, %40
  %63 = load %struct.adapter*, %struct.adapter** %2, align 8
  %64 = call i64 @is_primary_adapter(%struct.adapter* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.adapter*, %struct.adapter** %2, align 8
  %68 = call i32 @rtw_dynamic_chk_wk_cmd(%struct.adapter* %67)
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69, %61
  %71 = load %struct.adapter*, %struct.adapter** %2, align 8
  %72 = call i32 @rtw_auto_scan_handler(%struct.adapter* %71)
  br label %73

73:                                               ; preds = %70, %29, %23, %12, %6
  ret void
}

declare dso_local i64 @is_primary_adapter(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*, i32, i32) #1

declare dso_local i32 @hal_btcoex_IsBtDisabled(%struct.adapter*) #1

declare dso_local i32 @hal_btcoex_IsBtControlLps(%struct.adapter*) #1

declare dso_local %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @linked_status_chk(%struct.adapter*) #1

declare dso_local i64 @traffic_status_watchdog(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_hal_dm_watchdog_in_lps(%struct.adapter*) #1

declare dso_local i32 @rtw_dynamic_chk_wk_cmd(%struct.adapter*) #1

declare dso_local i32 @rtw_auto_scan_handler(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
