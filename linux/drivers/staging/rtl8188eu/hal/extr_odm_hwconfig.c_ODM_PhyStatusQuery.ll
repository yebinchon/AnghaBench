; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_hwconfig.c_ODM_PhyStatusQuery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_hwconfig.c_ODM_PhyStatusQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i64 }
%struct.odm_phy_status_info = type { i32 }
%struct.odm_per_pkt_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_PhyStatusQuery(%struct.odm_dm_struct* %0, %struct.odm_phy_status_info* %1, i32* %2, %struct.odm_per_pkt_info* %3) #0 {
  %5 = alloca %struct.odm_dm_struct*, align 8
  %6 = alloca %struct.odm_phy_status_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.odm_per_pkt_info*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %5, align 8
  store %struct.odm_phy_status_info* %1, %struct.odm_phy_status_info** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.odm_per_pkt_info* %3, %struct.odm_per_pkt_info** %8, align 8
  %9 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %10 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load %struct.odm_per_pkt_info*, %struct.odm_per_pkt_info** %8, align 8
  %13 = call i32 @odm_RxPhyStatus92CSeries_Parsing(%struct.odm_dm_struct* %9, %struct.odm_phy_status_info* %10, i32* %11, %struct.odm_per_pkt_info* %12)
  %14 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %15 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %24

19:                                               ; preds = %4
  %20 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %21 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %22 = load %struct.odm_per_pkt_info*, %struct.odm_per_pkt_info** %8, align 8
  %23 = call i32 @odm_Process_RSSIForDM(%struct.odm_dm_struct* %20, %struct.odm_phy_status_info* %21, %struct.odm_per_pkt_info* %22)
  br label %24

24:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @odm_RxPhyStatus92CSeries_Parsing(%struct.odm_dm_struct*, %struct.odm_phy_status_info*, i32*, %struct.odm_per_pkt_info*) #1

declare dso_local i32 @odm_Process_RSSIForDM(%struct.odm_dm_struct*, %struct.odm_phy_status_info*, %struct.odm_per_pkt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
