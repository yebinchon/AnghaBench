; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_traffic_check_for_leave_lps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_traffic_check_for_leave_lps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@traffic_check_for_leave_lps.start_time = internal global i64 0, align 8
@traffic_check_for_leave_lps.xmit_cnt = internal global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"leave lps via Tx = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"leave lps via Rx = %d\0A\00", align 1
@LPS_CTRL_LEAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @traffic_check_for_leave_lps(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.mlme_priv* %10, %struct.mlme_priv** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @traffic_check_for_leave_lps.xmit_cnt, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* @traffic_check_for_leave_lps.xmit_cnt, align 4
  %17 = load i64, i64* @traffic_check_for_leave_lps.start_time, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* @jiffies, align 8
  store i64 %20, i64* @traffic_check_for_leave_lps.start_time, align 8
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* @traffic_check_for_leave_lps.start_time, align 8
  %24 = sub i64 %22, %23
  %25 = call i32 @jiffies_to_msecs(i64 %24)
  %26 = icmp sgt i32 %25, 2000
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = load i32, i32* @traffic_check_for_leave_lps.xmit_cnt, align 4
  %29 = icmp sgt i32 %28, 8
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = call %struct.TYPE_4__* @adapter_to_pwrctl(%struct.adapter* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = call %struct.TYPE_4__* @adapter_to_pwrctl(%struct.adapter* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.adapter*, %struct.adapter** %4, align 8
  %45 = call i32 @hal_btcoex_IsBtControlLps(%struct.adapter* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @traffic_check_for_leave_lps.xmit_cnt, align 4
  %49 = call i32 @DBG_871X(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %43, %36, %30
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i64, i64* @jiffies, align 8
  store i64 %52, i64* @traffic_check_for_leave_lps.start_time, align 8
  store i32 0, i32* @traffic_check_for_leave_lps.xmit_cnt, align 4
  br label %53

53:                                               ; preds = %51, %21
  br label %85

54:                                               ; preds = %3
  %55 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %56 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 4
  br i1 %59, label %60, label %84

60:                                               ; preds = %54
  %61 = load %struct.adapter*, %struct.adapter** %4, align 8
  %62 = call %struct.TYPE_4__* @adapter_to_pwrctl(%struct.adapter* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load %struct.adapter*, %struct.adapter** %4, align 8
  %68 = call %struct.TYPE_4__* @adapter_to_pwrctl(%struct.adapter* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load %struct.adapter*, %struct.adapter** %4, align 8
  %75 = call i32 @hal_btcoex_IsBtControlLps(%struct.adapter* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %79 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @DBG_871X(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  store i32 1, i32* %7, align 4
  br label %83

83:                                               ; preds = %77, %73, %66, %60
  br label %84

84:                                               ; preds = %83, %54
  br label %85

85:                                               ; preds = %84, %53
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load %struct.adapter*, %struct.adapter** %4, align 8
  %90 = load i32, i32* @LPS_CTRL_LEAVE, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 0, i32 1
  %95 = call i32 @rtw_lps_ctrl_wk_cmd(%struct.adapter* %89, i32 %90, i32 %94)
  br label %96

96:                                               ; preds = %88, %85
  ret void
}

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local %struct.TYPE_4__* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @hal_btcoex_IsBtControlLps(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*, i32) #1

declare dso_local i32 @rtw_lps_ctrl_wk_cmd(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
