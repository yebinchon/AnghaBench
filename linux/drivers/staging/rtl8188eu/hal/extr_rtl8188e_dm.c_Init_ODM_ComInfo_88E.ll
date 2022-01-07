; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_dm.c_Init_ODM_ComInfo_88E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_dm.c_Init_ODM_ComInfo_88E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.hal_data_8188e* }
%struct.TYPE_4__ = type { i32 }
%struct.hal_data_8188e = type { i32, i32, %struct.TYPE_3__, %struct.odm_dm_struct, %struct.dm_priv }
%struct.TYPE_3__ = type { i64 }
%struct.odm_dm_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.adapter* }
%struct.dm_priv = type { i32 }

@ODM_CE = common dso_local global i32 0, align 4
@ODM_RTL8188E = common dso_local global i32 0, align 4
@ODM_CUT_A = common dso_local global i32 0, align 4
@NORMAL_CHIP = common dso_local global i64 0, align 8
@ODM_RF_CALIBRATION = common dso_local global i32 0, align 4
@ODM_RF_TX_PWR_TRACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @Init_ODM_ComInfo_88E to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Init_ODM_ComInfo_88E(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_data_8188e*, align 8
  %4 = alloca %struct.dm_priv*, align 8
  %5 = alloca %struct.odm_dm_struct*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 1
  %8 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  store %struct.hal_data_8188e* %8, %struct.hal_data_8188e** %3, align 8
  %9 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %10 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %9, i32 0, i32 4
  store %struct.dm_priv* %10, %struct.dm_priv** %4, align 8
  %11 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %12 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %11, i32 0, i32 3
  store %struct.odm_dm_struct* %12, %struct.odm_dm_struct** %5, align 8
  %13 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %14 = call i32 @memset(%struct.odm_dm_struct* %13, i32 0, i32 56)
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %17 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %16, i32 0, i32 11
  store %struct.adapter* %15, %struct.adapter** %17, align 8
  %18 = load i32, i32* @ODM_CE, align 4
  %19 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %20 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @ODM_RTL8188E, align 4
  %22 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %23 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ODM_CUT_A, align 4
  %25 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %26 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %28 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NORMAL_CHIP, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %35 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %37 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %40 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %46 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %48 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %51 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %53 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %52, i32 0, i32 1
  store i32 12, i32* %53, align 4
  %54 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %55 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %54, i32 0, i32 2
  store i32 12, i32* %55, align 8
  %56 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %57 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %56, i32 0, i32 3
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* @ODM_RF_CALIBRATION, align 4
  %59 = load i32, i32* @ODM_RF_TX_PWR_TRACK, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %62 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %64 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %67 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  ret void
}

declare dso_local i32 @memset(%struct.odm_dm_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
