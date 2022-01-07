; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_dm.c_rtl8188e_InitHalDm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_dm.c_rtl8188e_InitHalDm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.odm_dm_struct, %struct.dm_priv }
%struct.odm_dm_struct = type { i32 }
%struct.dm_priv = type { i32, i32 }

@DM_Type_ByDriver = common dso_local global i32 0, align 4
@DYNAMIC_FUNC_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8188e_InitHalDm(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.dm_priv*, align 8
  %4 = alloca %struct.odm_dm_struct*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.dm_priv* %8, %struct.dm_priv** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.odm_dm_struct* %12, %struct.odm_dm_struct** %4, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = call i32 @dm_InitGPIOSetting(%struct.adapter* %13)
  %15 = load i32, i32* @DM_Type_ByDriver, align 4
  %16 = load %struct.dm_priv*, %struct.dm_priv** %3, align 8
  %17 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @DYNAMIC_FUNC_DISABLE, align 4
  %19 = load %struct.dm_priv*, %struct.dm_priv** %3, align 8
  %20 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = call i32 @Update_ODM_ComInfo_88E(%struct.adapter* %21)
  %23 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %24 = call i32 @ODM_DMInit(%struct.odm_dm_struct* %23)
  ret void
}

declare dso_local i32 @dm_InitGPIOSetting(%struct.adapter*) #1

declare dso_local i32 @Update_ODM_ComInfo_88E(%struct.adapter*) #1

declare dso_local i32 @ODM_DMInit(%struct.odm_dm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
