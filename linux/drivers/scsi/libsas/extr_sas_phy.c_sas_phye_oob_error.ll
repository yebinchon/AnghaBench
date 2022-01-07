; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_phy.c_sas_phye_oob_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_phy.c_sas_phye_oob_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.asd_sas_event = type { %struct.asd_sas_phy* }
%struct.asd_sas_phy = type { i32, i64, %struct.asd_sas_port*, %struct.sas_ha_struct* }
%struct.asd_sas_port = type { i32 }
%struct.sas_ha_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sas_internal = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.asd_sas_phy*, i32, i32*)* }

@PHY_FUNC_HARD_RESET = common dso_local global i32 0, align 4
@PHY_FUNC_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @sas_phye_oob_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_phye_oob_error(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.asd_sas_event*, align 8
  %4 = alloca %struct.asd_sas_phy*, align 8
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.asd_sas_port*, align 8
  %7 = alloca %struct.sas_internal*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %8 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %9 = call %struct.asd_sas_event* @to_asd_sas_event(%struct.work_struct* %8)
  store %struct.asd_sas_event* %9, %struct.asd_sas_event** %3, align 8
  %10 = load %struct.asd_sas_event*, %struct.asd_sas_event** %3, align 8
  %11 = getelementptr inbounds %struct.asd_sas_event, %struct.asd_sas_event* %10, i32 0, i32 0
  %12 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %11, align 8
  store %struct.asd_sas_phy* %12, %struct.asd_sas_phy** %4, align 8
  %13 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %14 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %13, i32 0, i32 3
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %14, align 8
  store %struct.sas_ha_struct* %15, %struct.sas_ha_struct** %5, align 8
  %16 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %17 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %16, i32 0, i32 2
  %18 = load %struct.asd_sas_port*, %struct.asd_sas_port** %17, align 8
  store %struct.asd_sas_port* %18, %struct.asd_sas_port** %6, align 8
  %19 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %20 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.sas_internal* @to_sas_internal(i32 %24)
  store %struct.sas_internal* %25, %struct.sas_internal** %7, align 8
  %26 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %27 = call i32 @sas_deform_port(%struct.asd_sas_phy* %26, i32 1)
  %28 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %29 = icmp ne %struct.asd_sas_port* %28, null
  br i1 %29, label %74, label %30

30:                                               ; preds = %1
  %31 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %32 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %30
  %36 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %37 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32 (%struct.asd_sas_phy*, i32, i32*)*, i32 (%struct.asd_sas_phy*, i32, i32*)** %39, align 8
  %41 = icmp ne i32 (%struct.asd_sas_phy*, i32, i32*)* %40, null
  br i1 %41, label %42, label %74

42:                                               ; preds = %35
  %43 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %44 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %48 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %60 [
    i32 1, label %50
    i32 2, label %50
    i32 3, label %59
  ]

50:                                               ; preds = %42, %42
  %51 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %52 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (%struct.asd_sas_phy*, i32, i32*)*, i32 (%struct.asd_sas_phy*, i32, i32*)** %54, align 8
  %56 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %57 = load i32, i32* @PHY_FUNC_HARD_RESET, align 4
  %58 = call i32 %55(%struct.asd_sas_phy* %56, i32 %57, i32* null)
  br label %73

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %42, %59
  %61 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %62 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %64 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %66 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32 (%struct.asd_sas_phy*, i32, i32*)*, i32 (%struct.asd_sas_phy*, i32, i32*)** %68, align 8
  %70 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %71 = load i32, i32* @PHY_FUNC_DISABLE, align 4
  %72 = call i32 %69(%struct.asd_sas_phy* %70, i32 %71, i32* null)
  br label %73

73:                                               ; preds = %60, %50
  br label %74

74:                                               ; preds = %73, %35, %30, %1
  ret void
}

declare dso_local %struct.asd_sas_event* @to_asd_sas_event(%struct.work_struct*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @sas_deform_port(%struct.asd_sas_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
