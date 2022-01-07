; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_init.c_isci_user_parameters_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_init.c_isci_user_parameters_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_user_parameters = type { i32, i32, i32, i32, i32, i32, %struct.sci_phy_user_params* }
%struct.sci_phy_user_params = type { i32, i32, i32, i32 }

@SCI_MAX_PHYS = common dso_local global i32 0, align 4
@phy_gen = common dso_local global i32 0, align 4
@stp_inactive_to = common dso_local global i32 0, align 4
@ssp_inactive_to = common dso_local global i32 0, align 4
@stp_max_occ_to = common dso_local global i32 0, align 4
@ssp_max_occ_to = common dso_local global i32 0, align 4
@no_outbound_task_to = common dso_local global i32 0, align 4
@max_concurr_spinup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sci_user_parameters*)* @isci_user_parameters_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isci_user_parameters_get(%struct.sci_user_parameters* %0) #0 {
  %2 = alloca %struct.sci_user_parameters*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sci_phy_user_params*, align 8
  store %struct.sci_user_parameters* %0, %struct.sci_user_parameters** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SCI_MAX_PHYS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %2, align 8
  %11 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %10, i32 0, i32 6
  %12 = load %struct.sci_phy_user_params*, %struct.sci_phy_user_params** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.sci_phy_user_params, %struct.sci_phy_user_params* %12, i64 %14
  store %struct.sci_phy_user_params* %15, %struct.sci_phy_user_params** %4, align 8
  %16 = load i32, i32* @phy_gen, align 4
  %17 = load %struct.sci_phy_user_params*, %struct.sci_phy_user_params** %4, align 8
  %18 = getelementptr inbounds %struct.sci_phy_user_params, %struct.sci_phy_user_params* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sci_phy_user_params*, %struct.sci_phy_user_params** %4, align 8
  %20 = getelementptr inbounds %struct.sci_phy_user_params, %struct.sci_phy_user_params* %19, i32 0, i32 0
  store i32 127, i32* %20, align 4
  %21 = load %struct.sci_phy_user_params*, %struct.sci_phy_user_params** %4, align 8
  %22 = getelementptr inbounds %struct.sci_phy_user_params, %struct.sci_phy_user_params* %21, i32 0, i32 1
  store i32 255, i32* %22, align 4
  %23 = load %struct.sci_phy_user_params*, %struct.sci_phy_user_params** %4, align 8
  %24 = getelementptr inbounds %struct.sci_phy_user_params, %struct.sci_phy_user_params* %23, i32 0, i32 2
  store i32 51, i32* %24, align 4
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load i32, i32* @stp_inactive_to, align 4
  %30 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %2, align 8
  %31 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @ssp_inactive_to, align 4
  %33 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %2, align 8
  %34 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @stp_max_occ_to, align 4
  %36 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %2, align 8
  %37 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ssp_max_occ_to, align 4
  %39 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %2, align 8
  %40 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @no_outbound_task_to, align 4
  %42 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %2, align 8
  %43 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @max_concurr_spinup, align 4
  %45 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %2, align 8
  %46 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
