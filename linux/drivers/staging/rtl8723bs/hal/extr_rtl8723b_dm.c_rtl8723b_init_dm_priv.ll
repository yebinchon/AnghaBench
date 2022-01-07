; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_dm.c_rtl8723b_init_dm_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_dm.c_rtl8723b_init_dm_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { %struct.dm_priv }
%struct.dm_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723b_init_dm_priv(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca %struct.dm_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %5)
  store %struct.hal_com_data* %6, %struct.hal_com_data** %3, align 8
  %7 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %8 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %7, i32 0, i32 0
  store %struct.dm_priv* %8, %struct.dm_priv** %4, align 8
  %9 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %10 = call i32 @memset(%struct.dm_priv* %9, i32 0, i32 4)
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = call i32 @Init_ODM_ComInfo_8723b(%struct.adapter* %11)
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @memset(%struct.dm_priv*, i32, i32) #1

declare dso_local i32 @Init_ODM_ComInfo_8723b(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
