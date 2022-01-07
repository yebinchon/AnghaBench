; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_phy.c_sas_phye_spinup_hold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_phy.c_sas_phye_spinup_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.asd_sas_event = type { %struct.asd_sas_phy* }
%struct.asd_sas_phy = type { i64, %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sas_internal = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.asd_sas_phy*, i32, i32*)* }

@PHY_FUNC_RELEASE_SPINUP_HOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @sas_phye_spinup_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_phye_spinup_hold(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.asd_sas_event*, align 8
  %4 = alloca %struct.asd_sas_phy*, align 8
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.sas_internal*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %7 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %8 = call %struct.asd_sas_event* @to_asd_sas_event(%struct.work_struct* %7)
  store %struct.asd_sas_event* %8, %struct.asd_sas_event** %3, align 8
  %9 = load %struct.asd_sas_event*, %struct.asd_sas_event** %3, align 8
  %10 = getelementptr inbounds %struct.asd_sas_event, %struct.asd_sas_event* %9, i32 0, i32 0
  %11 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  store %struct.asd_sas_phy* %11, %struct.asd_sas_phy** %4, align 8
  %12 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %13 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %12, i32 0, i32 1
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  store %struct.sas_ha_struct* %14, %struct.sas_ha_struct** %5, align 8
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %16 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.sas_internal* @to_sas_internal(i32 %20)
  store %struct.sas_internal* %21, %struct.sas_internal** %6, align 8
  %22 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %23 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.sas_internal*, %struct.sas_internal** %6, align 8
  %25 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.asd_sas_phy*, i32, i32*)*, i32 (%struct.asd_sas_phy*, i32, i32*)** %27, align 8
  %29 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %30 = load i32, i32* @PHY_FUNC_RELEASE_SPINUP_HOLD, align 4
  %31 = call i32 %28(%struct.asd_sas_phy* %29, i32 %30, i32* null)
  ret void
}

declare dso_local %struct.asd_sas_event* @to_asd_sas_event(%struct.work_struct*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
