; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_dm.c_rtl8723b_InitHalDm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_dm.c_rtl8723b_InitHalDm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32, %struct.dm_priv }
%struct.dm_priv = type { i32, i32, i32 }

@DM_Type_ByDriver = common dso_local global i32 0, align 4
@DYNAMIC_FUNC_DISABLE = common dso_local global i32 0, align 4
@DYNAMIC_FUNC_BT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723b_InitHalDm(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca %struct.dm_priv*, align 8
  %5 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %6)
  store %struct.hal_com_data* %7, %struct.hal_com_data** %3, align 8
  %8 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %9 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %8, i32 0, i32 1
  store %struct.dm_priv* %9, %struct.dm_priv** %4, align 8
  %10 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %11 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %10, i32 0, i32 0
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @DM_Type_ByDriver, align 4
  %13 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %14 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @DYNAMIC_FUNC_DISABLE, align 4
  %16 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %17 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @DYNAMIC_FUNC_BT, align 4
  %19 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %20 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %24 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %27 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = call i32 @Update_ODM_ComInfo_8723b(%struct.adapter* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ODM_DMInit(i32* %30)
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @Update_ODM_ComInfo_8723b(%struct.adapter*) #1

declare dso_local i32 @ODM_DMInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
