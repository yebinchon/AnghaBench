; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_get_external_phy_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_get_external_phy_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }
%struct.pm8001_mpi3_phy_pg_trx_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, %struct.pm8001_mpi3_phy_pg_trx_config*)* @pm8001_get_external_phy_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_get_external_phy_settings(%struct.pm8001_hba_info* %0, %struct.pm8001_mpi3_phy_pg_trx_config* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.pm8001_mpi3_phy_pg_trx_config*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store %struct.pm8001_mpi3_phy_pg_trx_config* %1, %struct.pm8001_mpi3_phy_pg_trx_config** %4, align 8
  %5 = load %struct.pm8001_mpi3_phy_pg_trx_config*, %struct.pm8001_mpi3_phy_pg_trx_config** %4, align 8
  %6 = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, %struct.pm8001_mpi3_phy_pg_trx_config* %5, i32 0, i32 0
  store i32 306, i32* %6, align 4
  %7 = load %struct.pm8001_mpi3_phy_pg_trx_config*, %struct.pm8001_mpi3_phy_pg_trx_config** %4, align 8
  %8 = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, %struct.pm8001_mpi3_phy_pg_trx_config* %7, i32 0, i32 1
  store i32 2111817, i32* %8, align 4
  %9 = load %struct.pm8001_mpi3_phy_pg_trx_config*, %struct.pm8001_mpi3_phy_pg_trx_config** %4, align 8
  %10 = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, %struct.pm8001_mpi3_phy_pg_trx_config* %9, i32 0, i32 2
  store i32 255, i32* %10, align 4
  %11 = load %struct.pm8001_mpi3_phy_pg_trx_config*, %struct.pm8001_mpi3_phy_pg_trx_config** %4, align 8
  %12 = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, %struct.pm8001_mpi3_phy_pg_trx_config* %11, i32 0, i32 3
  store i32 -16777215, i32* %12, align 4
  %13 = load %struct.pm8001_mpi3_phy_pg_trx_config*, %struct.pm8001_mpi3_phy_pg_trx_config** %4, align 8
  %14 = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, %struct.pm8001_mpi3_phy_pg_trx_config* %13, i32 0, i32 4
  store i32 -419360000, i32* %14, align 4
  %15 = load %struct.pm8001_mpi3_phy_pg_trx_config*, %struct.pm8001_mpi3_phy_pg_trx_config** %4, align 8
  %16 = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, %struct.pm8001_mpi3_phy_pg_trx_config* %15, i32 0, i32 5
  store i32 1664389440, i32* %16, align 4
  %17 = load %struct.pm8001_mpi3_phy_pg_trx_config*, %struct.pm8001_mpi3_phy_pg_trx_config** %4, align 8
  %18 = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, %struct.pm8001_mpi3_phy_pg_trx_config* %17, i32 0, i32 6
  store i32 -133160906, i32* %18, align 4
  %19 = load %struct.pm8001_mpi3_phy_pg_trx_config*, %struct.pm8001_mpi3_phy_pg_trx_config** %4, align 8
  %20 = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, %struct.pm8001_mpi3_phy_pg_trx_config* %19, i32 0, i32 7
  store i32 -133328128, i32* %20, align 4
  %21 = load %struct.pm8001_mpi3_phy_pg_trx_config*, %struct.pm8001_mpi3_phy_pg_trx_config** %4, align 8
  %22 = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, %struct.pm8001_mpi3_phy_pg_trx_config* %21, i32 0, i32 8
  store i32 16462840, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
