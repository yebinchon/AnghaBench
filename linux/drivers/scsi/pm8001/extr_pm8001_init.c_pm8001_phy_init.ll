; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.pm8001_phy* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.pm8001_phy = type { i32*, i32, %struct.pm8001_hba_info*, i32, %struct.asd_sas_phy }
%struct.asd_sas_phy = type { i32, i32, %struct.pm8001_phy*, %struct.sas_ha_struct*, i32*, i32*, i32, i32, i32, i32, i64, i32, i32 }
%struct.sas_ha_struct = type { i32 }

@PHY_LINK_DISABLE = common dso_local global i32 0, align 4
@SAS = common dso_local global i32 0, align 4
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@PHY_TYPE_PHYSICAL = common dso_local global i32 0, align 4
@PHY_ROLE_INITIATOR = common dso_local global i32 0, align 4
@OOB_NOT_CONNECTED = common dso_local global i32 0, align 4
@SAS_LINK_RATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i32)* @pm8001_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_phy_init(%struct.pm8001_hba_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8001_phy*, align 8
  %6 = alloca %struct.asd_sas_phy*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %8 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %7, i32 0, i32 2
  %9 = load %struct.pm8001_phy*, %struct.pm8001_phy** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %9, i64 %11
  store %struct.pm8001_phy* %12, %struct.pm8001_phy** %5, align 8
  %13 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %14 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %13, i32 0, i32 4
  store %struct.asd_sas_phy* %14, %struct.asd_sas_phy** %6, align 8
  %15 = load i32, i32* @PHY_LINK_DISABLE, align 4
  %16 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %17 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %19 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %20 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %19, i32 0, i32 2
  store %struct.pm8001_hba_info* %18, %struct.pm8001_hba_info** %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %23 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %21, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %31 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @SAS, align 4
  %33 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %34 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %36 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %37 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 8
  %38 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %39 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %38, i32 0, i32 10
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @PHY_TYPE_PHYSICAL, align 4
  %41 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %42 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @PHY_ROLE_INITIATOR, align 4
  %44 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %45 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @OOB_NOT_CONNECTED, align 4
  %47 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %48 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @SAS_LINK_RATE_UNKNOWN, align 4
  %50 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %51 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %54 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %56 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %55, i32 0, i32 1
  %57 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %58 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %57, i32 0, i32 5
  store i32* %56, i32** %58, align 8
  %59 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %60 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %64 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  %65 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %66 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.sas_ha_struct*
  %71 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %72 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %71, i32 0, i32 3
  store %struct.sas_ha_struct* %70, %struct.sas_ha_struct** %72, align 8
  %73 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %74 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %75 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %74, i32 0, i32 2
  store %struct.pm8001_phy* %73, %struct.pm8001_phy** %75, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
