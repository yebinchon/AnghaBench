; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_host_smp.c_sas_phy_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_host_smp.c_sas_phy_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i64, %struct.asd_sas_phy**, %struct.TYPE_5__ }
%struct.asd_sas_phy = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sas_internal = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.asd_sas_phy*, i64, %struct.sas_phy_linkrates*)* }
%struct.sas_phy_linkrates = type { i32, i32 }

@SMP_RESP_NO_PHY = common dso_local global i64 0, align 8
@SMP_RESP_PHY_UNK_OP = common dso_local global i64 0, align 8
@SMP_RESP_FUNC_ACC = common dso_local global i64 0, align 8
@SMP_RESP_FUNC_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sas_ha_struct*, i64, i64, i32, i32, i64*)* @sas_phy_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_phy_control(%struct.sas_ha_struct* %0, i64 %1, i64 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.sas_ha_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.sas_internal*, align 8
  %14 = alloca %struct.sas_phy_linkrates, align 4
  %15 = alloca %struct.asd_sas_phy*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  %16 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %17 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sas_internal* @to_sas_internal(i32 %21)
  store %struct.sas_internal* %22, %struct.sas_internal** %13, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %25 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i64, i64* @SMP_RESP_NO_PHY, align 8
  %30 = load i64*, i64** %12, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  store i64 %29, i64* %31, align 8
  br label %78

32:                                               ; preds = %6
  %33 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %34 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %33, i32 0, i32 1
  %35 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %35, i64 %36
  %38 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %37, align 8
  store %struct.asd_sas_phy* %38, %struct.asd_sas_phy** %15, align 8
  %39 = load i64, i64* %9, align 8
  switch i64 %39, label %41 [
    i64 129, label %40
    i64 130, label %40
    i64 131, label %40
    i64 132, label %40
    i64 133, label %40
    i64 134, label %40
    i64 128, label %40
  ]

40:                                               ; preds = %32, %32, %32, %32, %32, %32, %32
  br label %45

41:                                               ; preds = %32
  %42 = load i64, i64* @SMP_RESP_PHY_UNK_OP, align 8
  %43 = load i64*, i64** %12, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  store i64 %42, i64* %44, align 8
  br label %78

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %14, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %14, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %50, 130
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %54 = call i64 @sas_try_ata_reset(%struct.asd_sas_phy* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* @SMP_RESP_FUNC_ACC, align 8
  %58 = load i64*, i64** %12, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  store i64 %57, i64* %59, align 8
  br label %78

60:                                               ; preds = %52, %45
  %61 = load %struct.sas_internal*, %struct.sas_internal** %13, align 8
  %62 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64 (%struct.asd_sas_phy*, i64, %struct.sas_phy_linkrates*)*, i64 (%struct.asd_sas_phy*, i64, %struct.sas_phy_linkrates*)** %64, align 8
  %66 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i64 %65(%struct.asd_sas_phy* %66, i64 %67, %struct.sas_phy_linkrates* %14)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i64, i64* @SMP_RESP_FUNC_FAILED, align 8
  %72 = load i64*, i64** %12, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  store i64 %71, i64* %73, align 8
  br label %78

74:                                               ; preds = %60
  %75 = load i64, i64* @SMP_RESP_FUNC_ACC, align 8
  %76 = load i64*, i64** %12, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %28, %41, %56, %74, %70
  ret void
}

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i64 @sas_try_ata_reset(%struct.asd_sas_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
