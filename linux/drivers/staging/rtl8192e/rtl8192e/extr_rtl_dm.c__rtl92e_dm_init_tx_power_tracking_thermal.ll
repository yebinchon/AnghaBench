; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_init_tx_power_tracking_thermal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_init_tx_power_tracking_thermal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"pMgntInfo->bTXPowerTracking = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_dm_init_tx_power_tracking_thermal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_init_tx_power_tracking_thermal(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @RT_TRACE(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
