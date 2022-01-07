; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_set_phy_settings_ven_117c_12G.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_set_phy_settings_ven_117c_12G.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pm8001_mpi3_phy_pg_trx_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm8001_set_phy_settings_ven_117c_12G to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_set_phy_settings_ven_117c_12G(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca %struct.pm8001_hba_info*, align 8
  %3 = alloca %struct.pm8001_mpi3_phy_pg_trx_config, align 4
  %4 = alloca %struct.pm8001_mpi3_phy_pg_trx_config, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 @memset(%struct.pm8001_mpi3_phy_pg_trx_config* %3, i32 0, i32 4)
  %8 = call i32 @memset(%struct.pm8001_mpi3_phy_pg_trx_config* %4, i32 0, i32 4)
  %9 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %10 = call i32 @pm8001_get_internal_phy_settings(%struct.pm8001_hba_info* %9, %struct.pm8001_mpi3_phy_pg_trx_config* %3)
  %11 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %12 = call i32 @pm8001_get_external_phy_settings(%struct.pm8001_hba_info* %11, %struct.pm8001_mpi3_phy_pg_trx_config* %4)
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %14 = call i32 @pm8001_get_phy_mask(%struct.pm8001_hba_info* %13, i32* %5)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %40, %1
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %18 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %31 = load i32, i32* %6, align 4
  %32 = bitcast %struct.pm8001_mpi3_phy_pg_trx_config* %3 to i32*
  %33 = call i32 @pm8001_set_phy_profile_single(%struct.pm8001_hba_info* %30, i32 %31, i32 1, i32* %32)
  br label %39

34:                                               ; preds = %23
  %35 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %36 = load i32, i32* %6, align 4
  %37 = bitcast %struct.pm8001_mpi3_phy_pg_trx_config* %4 to i32*
  %38 = call i32 @pm8001_set_phy_profile_single(%struct.pm8001_hba_info* %35, i32 %36, i32 1, i32* %37)
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %15

43:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @memset(%struct.pm8001_mpi3_phy_pg_trx_config*, i32, i32) #1

declare dso_local i32 @pm8001_get_internal_phy_settings(%struct.pm8001_hba_info*, %struct.pm8001_mpi3_phy_pg_trx_config*) #1

declare dso_local i32 @pm8001_get_external_phy_settings(%struct.pm8001_hba_info*, %struct.pm8001_mpi3_phy_pg_trx_config*) #1

declare dso_local i32 @pm8001_get_phy_mask(%struct.pm8001_hba_info*, i32*) #1

declare dso_local i32 @pm8001_set_phy_profile_single(%struct.pm8001_hba_info*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
