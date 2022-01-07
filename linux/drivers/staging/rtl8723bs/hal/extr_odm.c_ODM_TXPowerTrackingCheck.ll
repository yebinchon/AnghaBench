; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm.c_ODM_TXPowerTrackingCheck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm.c_ODM_TXPowerTrackingCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, %struct.adapter* }
%struct.TYPE_4__ = type { i32 }
%struct.adapter = type { i32 }

@ODM_RF_TX_PWR_TRACK = common dso_local global i32 0, align 4
@ODM_RF_PATH_A = common dso_local global i32 0, align 4
@RF_T_METER_NEW = common dso_local global i32 0, align 4
@BIT17 = common dso_local global i32 0, align 4
@BIT16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_TXPowerTrackingCheck(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.adapter*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %6 = load %struct.adapter*, %struct.adapter** %5, align 8
  store %struct.adapter* %6, %struct.adapter** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ODM_RF_TX_PWR_TRACK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.adapter*, %struct.adapter** %22, align 8
  %24 = load i32, i32* @ODM_RF_PATH_A, align 4
  %25 = load i32, i32* @RF_T_METER_NEW, align 4
  %26 = load i32, i32* @BIT17, align 4
  %27 = load i32, i32* @BIT16, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @PHY_SetRFReg(%struct.adapter* %23, i32 %24, i32 %25, i32 %28, i32 3)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %39

33:                                               ; preds = %14
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = call i32 @ODM_TXPowerTrackingCallback_ThermalMeter(%struct.adapter* %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %13, %20, %33
  ret void
}

declare dso_local i32 @PHY_SetRFReg(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @ODM_TXPowerTrackingCallback_ThermalMeter(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
