; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_phy_ctl_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_phy_ctl_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.local_phy_ctl_req = type { i8*, i8* }

@OPC_INB_LOCAL_PHY_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i32, i32)* @pm8001_chip_phy_ctl_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_chip_phy_ctl_req(%struct.pm8001_hba_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.local_phy_ctl_req, align 8
  %8 = alloca %struct.inbound_queue_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @OPC_INB_LOCAL_PHY_CONTROL, align 4
  store i32 %11, i32* %10, align 4
  %12 = call i32 @memset(%struct.local_phy_ctl_req* %7, i32 0, i32 16)
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %14 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %13, i32 0, i32 0
  %15 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %14, align 8
  %16 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %15, i64 0
  store %struct.inbound_queue_table* %16, %struct.inbound_queue_table** %8, align 8
  %17 = call i8* @cpu_to_le32(i32 1)
  %18 = getelementptr inbounds %struct.local_phy_ctl_req, %struct.local_phy_ctl_req* %7, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 255
  %21 = shl i32 %20, 8
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 15
  %24 = or i32 %21, %23
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.local_phy_ctl_req, %struct.local_phy_ctl_req* %7, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %28 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %27, %struct.inbound_queue_table* %28, i32 %29, %struct.local_phy_ctl_req* %7, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @memset(%struct.local_phy_ctl_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.local_phy_ctl_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
