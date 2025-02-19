; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_dm_txpwr_track_setpwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_dm_txpwr_track_setpwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32, i32, i32*, i32 }

@ODM_COMP_TX_PWR_TRACK = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"dm_txpwr_track_setpwr CH=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.odm_dm_struct*)* @dm_txpwr_track_setpwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_txpwr_track_setpwr(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %3 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %4 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %9 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %7, %1
  %13 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %14 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %15 = load i32, i32* @ODM_DBG_LOUD, align 4
  %16 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %17 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %13, i32 %14, i32 %15, i8* %21)
  %23 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %24 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %27 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @phy_set_tx_power_level(i32 %25, i32 %29)
  %31 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %32 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %34 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

declare dso_local i32 @phy_set_tx_power_level(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
