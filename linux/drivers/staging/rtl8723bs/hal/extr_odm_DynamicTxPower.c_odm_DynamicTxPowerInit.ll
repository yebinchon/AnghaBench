; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DynamicTxPower.c_odm_DynamicTxPowerInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DynamicTxPower.c_odm_DynamicTxPowerInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.hal_com_data = type { %struct.dm_priv }
%struct.dm_priv = type { i32, i8*, i8* }

@TxHighPwrLevel_Normal = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_DynamicTxPowerInit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.hal_com_data*, align 8
  %6 = alloca %struct.dm_priv*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %3, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %4, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %12)
  store %struct.hal_com_data* %13, %struct.hal_com_data** %5, align 8
  %14 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %15 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %14, i32 0, i32 0
  store %struct.dm_priv* %15, %struct.dm_priv** %6, align 8
  %16 = load %struct.dm_priv*, %struct.dm_priv** %6, align 8
  %17 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i8*, i8** @TxHighPwrLevel_Normal, align 8
  %19 = load %struct.dm_priv*, %struct.dm_priv** %6, align 8
  %20 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @TxHighPwrLevel_Normal, align 8
  %22 = load %struct.dm_priv*, %struct.dm_priv** %6, align 8
  %23 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
