; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_phy_ctl_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_phy_ctl_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.local_phy_ctl_req = type { i8*, i8* }

@OPC_INB_LOCAL_PHY_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i32, i32)* @pm80xx_chip_phy_ctl_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80xx_chip_phy_ctl_req(%struct.pm8001_hba_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8001_hba_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.local_phy_ctl_req, align 8
  %11 = alloca %struct.inbound_queue_table*, align 8
  %12 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @OPC_INB_LOCAL_PHY_CONTROL, align 4
  store i32 %13, i32* %12, align 4
  %14 = call i32 @memset(%struct.local_phy_ctl_req* %10, i32 0, i32 16)
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %16 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %15, i32* %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %23 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %22, i32 0, i32 0
  %24 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %23, align 8
  %25 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %24, i64 0
  store %struct.inbound_queue_table* %25, %struct.inbound_queue_table** %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = getelementptr inbounds %struct.local_phy_ctl_req, %struct.local_phy_ctl_req* %10, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 255
  %31 = shl i32 %30, 8
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  %34 = or i32 %31, %33
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.local_phy_ctl_req, %struct.local_phy_ctl_req* %10, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %38 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %37, %struct.inbound_queue_table* %38, i32 %39, %struct.local_phy_ctl_req* %10, i32 0)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %21, %19
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.local_phy_ctl_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.local_phy_ctl_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
