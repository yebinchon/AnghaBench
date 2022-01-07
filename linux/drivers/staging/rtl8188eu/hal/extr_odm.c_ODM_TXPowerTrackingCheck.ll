; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_TXPowerTrackingCheck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_TXPowerTrackingCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32, %struct.TYPE_2__, %struct.adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.adapter = type { i32 }

@ODM_RF_TX_PWR_TRACK = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i32 0, align 4
@RF_T_METER_88E = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_TXPowerTrackingCheck(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca %struct.adapter*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %4 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %5 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %4, i32 0, i32 2
  %6 = load %struct.adapter*, %struct.adapter** %5, align 8
  store %struct.adapter* %6, %struct.adapter** %3, align 8
  %7 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %8 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ODM_RF_TX_PWR_TRACK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %16 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %14
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = load i32, i32* @RF_PATH_A, align 4
  %23 = load i32, i32* @RF_T_METER_88E, align 4
  %24 = call i32 @BIT(i32 17)
  %25 = call i32 @BIT(i32 16)
  %26 = or i32 %24, %25
  %27 = call i32 @phy_set_rf_reg(%struct.adapter* %21, i32 %22, i32 %23, i32 %26, i32 3)
  %28 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %29 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %37

31:                                               ; preds = %14
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = call i32 @rtl88eu_dm_txpower_tracking_callback_thermalmeter(%struct.adapter* %32)
  %34 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %35 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %13, %20, %31
  ret void
}

declare dso_local i32 @phy_set_rf_reg(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl88eu_dm_txpower_tracking_callback_thermalmeter(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
