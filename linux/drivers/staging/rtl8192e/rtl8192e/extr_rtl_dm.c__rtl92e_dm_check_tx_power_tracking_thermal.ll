; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_check_tx_power_tracking_thermal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_check_tx_power_tracking_thermal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32 }

@_rtl92e_dm_check_tx_power_tracking_thermal.TM_Trigger = internal global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@bMask12Bits = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"===============>Schedule TxPowerTrackingWorkItem\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_dm_check_tx_power_tracking_thermal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_check_tx_power_tracking_thermal(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i64 @IS_HARDWARE_TYPE_8192SE(%struct.net_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 5, i32* %4, align 4
  br label %12

11:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %55

18:                                               ; preds = %12
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %55

29:                                               ; preds = %18
  %30 = load i32, i32* @_rtl92e_dm_check_tx_power_tracking_thermal.TM_Trigger, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %29
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load i32, i32* @RF90_PATH_A, align 4
  %35 = load i32, i32* @bMask12Bits, align 4
  %36 = call i32 @rtl92e_set_rf_reg(%struct.net_device* %33, i32 %34, i32 2, i32 %35, i32 77)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = load i32, i32* @RF90_PATH_A, align 4
  %39 = load i32, i32* @bMask12Bits, align 4
  %40 = call i32 @rtl92e_set_rf_reg(%struct.net_device* %37, i32 %38, i32 2, i32 %39, i32 79)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = load i32, i32* @RF90_PATH_A, align 4
  %43 = load i32, i32* @bMask12Bits, align 4
  %44 = call i32 @rtl92e_set_rf_reg(%struct.net_device* %41, i32 %42, i32 2, i32 %43, i32 77)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i32, i32* @RF90_PATH_A, align 4
  %47 = load i32, i32* @bMask12Bits, align 4
  %48 = call i32 @rtl92e_set_rf_reg(%struct.net_device* %45, i32 %46, i32 2, i32 %47, i32 79)
  store i32 1, i32* @_rtl92e_dm_check_tx_power_tracking_thermal.TM_Trigger, align 4
  br label %55

49:                                               ; preds = %29
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = call i32 @netdev_info(%struct.net_device* %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 1
  %54 = call i32 @schedule_delayed_work(i32* %53, i32 0)
  store i32 0, i32* @_rtl92e_dm_check_tx_power_tracking_thermal.TM_Trigger, align 4
  br label %55

55:                                               ; preds = %49, %32, %24, %17
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192SE(%struct.net_device*) #1

declare dso_local i32 @rtl92e_set_rf_reg(%struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
