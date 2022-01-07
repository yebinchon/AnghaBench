; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_DynamicTxPowerInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_DynamicTxPowerInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dm_priv }
%struct.dm_priv = type { i32, i8*, i8* }

@TxHighPwrLevel_Normal = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_DynamicTxPowerInit(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.dm_priv*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %5 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %6 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %5, i32 0, i32 0
  %7 = load %struct.adapter*, %struct.adapter** %6, align 8
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.dm_priv* %11, %struct.dm_priv** %4, align 8
  %12 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %13 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load i8*, i8** @TxHighPwrLevel_Normal, align 8
  %15 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %16 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @TxHighPwrLevel_Normal, align 8
  %18 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %19 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
